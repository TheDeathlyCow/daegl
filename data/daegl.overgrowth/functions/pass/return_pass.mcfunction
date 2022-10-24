# as player to return pass to, at self

loot give @s loot daegl.overgrowth:returns/pass

tellraw @s [{"text": "You already purchased this item!", "color": "red"}]

playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.3