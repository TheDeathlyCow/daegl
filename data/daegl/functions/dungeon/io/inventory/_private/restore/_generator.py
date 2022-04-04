
from textwrap import dedent
from typing import Any, Iterable

class Slot:
    
    def __init__(self, nbt_slot: int, name: str, index: Any) -> None:
        self.nbt_slot = nbt_slot
        self.name = name
        self.index = index
        
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

def print_slots(slots: SlotIterator):
    for slot in slots.get_slots():
        print(slot)
    print()

def main():
    hotbar = SlotIterator("hotbar", range(0, 9), 0)
    inventory = SlotIterator("inventory", range(0, 27), 9)
    armor = SlotIterator("armor", ["feet", "legs", "chest", "head"], 100)
    offhand = SlotIterator("weapon", ["offhand"], -106)
    ender_chest = SlotIterator("enderchest", range(0, 27), 0)
    
    print_slots(offhand)
    print_slots(armor)
    print_slots(hotbar)
    print_slots(inventory)
    print_slots(ender_chest)


if __name__ == '__main__':
    main()