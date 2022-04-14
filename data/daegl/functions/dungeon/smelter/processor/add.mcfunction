# as any, at smelter input container
execute store result score item_count daegl.temp run data get block ~ ~ ~ Items[{Slot:0b}].Count 

scoreboard players operation resource_count daegl.game_variables += item_count daegl.temp
scoreboard players reset item_count daegl.temp

data modify storage daegl:smelter process_buffer append from block ~ ~ ~ Items[{Slot:0b}]

item replace block ~ ~ ~ container.0 with air

schedule function daegl:dungeon/smelter/processor/process 5s append