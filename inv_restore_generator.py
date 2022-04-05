
from textwrap import dedent
import textwrap
from typing import Any, Iterable
import os

class Slot:
    
    def __init__(self, nbt_slot: int, name: str, index: Any) -> None:
        self.nbt_slot = nbt_slot
        self.name = name
        self.index = index
    
    def get_slot_str(self) -> str:
        return f'{self.name}.{self.index}'
    
    def get_nbt_str(self) -> str:
        return f'{{Slot:{self.nbt_slot}b}}'
    
    def __str__(self) -> str:
        return f'{{Slot:{self.nbt_slot}b,Name:"{self.name}.{self.index}"}}'

class SlotIterator:
    
    def __init__(self, name: str, indices: Iterable, nbt_start: int=0) -> None:
        super().__init__()
        self.name = name
        self.indices = indices
        self.nbt_start = nbt_start
        
    def get_slots(self):
        nbt = self.nbt_start
        for index in self.indices:
            yield Slot(nbt, self.name, index)
            nbt += 1


def generate_functions(name: str, slots: SlotIterator, directory: str):
    
    path = os.path.join(directory, name)
    with open(path + '.mcfunction', 'w') as outfile:
        
        
        for slot in slots.get_slots():
        
            template = [
                "data remove storage daegl:inventory temp_restore",
                f"data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{slot.get_nbt_str()}]",
                "execute if data storage daegl:inventory temp_restore as @e[tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet",
                f"execute if data storage daegl:inventory temp_restore run item replace entity @s {slot.get_slot_str()} from entity @e[tag=daegl_inventory_marker,limit=1] armor.feet\n"
            ]
            
            for entry in template:
                outfile.write(entry + '\n')

def print_slots(slots: SlotIterator):
    for slot in slots.get_slots():
        print(slot)
    print()

def main():
    slot_types = [
        SlotIterator("hotbar", range(0, 9), 0),
        SlotIterator("inventory", range(0, 27), 9),
        SlotIterator("armor", ["feet", "legs", "chest", "head"], 100),
        SlotIterator("weapon", ["offhand"], -106),
        SlotIterator("enderchest", range(0, 27), 0)
    ]
    
    function_directory = 'data/daegl/functions/dungeon/io/inventory/_private/restore'

    for type in slot_types:
        generate_functions(type.name, type, function_directory)

if __name__ == '__main__':
    main()