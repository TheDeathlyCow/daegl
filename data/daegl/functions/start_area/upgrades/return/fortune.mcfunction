# as player to return fortune to, at self

loot give @s loot daegl:returns/fortune

tellraw @s [{"text": "You have purchased the maximum level of this item!", "color": "red"}]

playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.3