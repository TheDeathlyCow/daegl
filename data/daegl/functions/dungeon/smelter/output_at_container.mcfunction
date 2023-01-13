# as any, at smelter output container
# takes the item in daegl:smelter to_output[0] and spawns it as an actual item entity

summon minecraft:item ~ ~1 ~ {Motion:[0.0,0.6,0.0],Item:{id:"minecraft:structure_void",Count:1b},Tags:["daegl.smelter_out"]}

execute as @e[distance=..5,tag=daegl.smelter_out,sort=nearest,limit=1] at @s run function daegl:dungeon/smelter/set_output_item

data remove storage daegl:smelter to_output[0]