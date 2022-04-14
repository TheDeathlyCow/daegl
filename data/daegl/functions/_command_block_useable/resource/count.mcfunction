
execute store result score item_count daegl.temp run data get block ~ ~ ~ Items[0].Count 
item replace block ~ ~ ~ container.0 with air
scoreboard players operation copper_count daegl.game_variables += item_count daegl.temp
scoreboard players reset item_count daegl.temp