# as player in daegl, at self
# kicks a single player out of the dungeon 

scoreboard players reset @s daegl.logout_count
tag @s remove in_daegl

teleport @s ~ ~ ~-5

execute if score current daegl.game_stage < PREPARE_IRON daegl.game_stage run function daegl:dungeon/io/inventory/restore
execute if score current daegl.game_stage >= PREPARE_IRON daegl.game_stage store result score @s daegl.time_finished run time query gametime
execute if score current daegl.game_stage >= PREPARE_IRON daegl.game_stage run scoreboard players add @s daegl.runs 1

tellraw @s [{"text": "You have left the ","color": "red"},{"text": "Mines of Daegl", "color": "gold"},"!"]

execute at @s run playsound minecraft:block.note_block.iron_xylophone master @s ~ ~ ~ 1 0.2

gamemode survival @s 