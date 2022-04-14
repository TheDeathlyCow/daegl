# as server, at smelter output container

summon minecraft:item ~ ~1 ~ {Motion:[0.0,0.6,0.0],Item:{id:"minecraft:structure_void",Count:1b},Tags:["daegl.smelter_out"]}

execute as @e[distance=..5,tag=daegl.smelter_out,sort=nearest,limit=1] at @s run function daegl:dungeon/smelter/output/_private/modify_item

data remove storage daegl:smelter to_output