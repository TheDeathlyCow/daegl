# as player in daegl, at self
# kicks a single player out of the dungeon 

scoreboard players reset @s daegl.logout_count
tag @s remove in_daegl

teleport @s ~ ~ ~-5

clear @s netherite_pickaxe{DaeglItem:1b}
#clear @s torch{DaeglItem:1b}

execute if score @s daegl.levels_completed matches 0 run function daegl:dungeon/io/inventory/restore

tellraw @s [{"text": "You have left the ","color": "red"},{"text": "Mines of Daegl", "color": "gold"},"!"]

execute at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0.2