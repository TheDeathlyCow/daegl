# as player to return axe to, at self

give @s diamond 1

tellraw @s [{"text": "You already purchased this item!", "color": "red"}]

playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.3