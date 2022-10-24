
execute as @e[scores={use_light=1..},gamemode=!creative] run give @s panda_spawn_egg{display:{Name:'{"text":"Amethyst Bottle","italic":false}'},CustomModelData:92643180,EntityTag:{id:"minecraft:armor_stand",Small:1b,Invisible:1b,Tags:["amethystBottleEntity"]}} 1
scoreboard players set @e[scores={use_light=1..}] use_light 0
scoreboard players set @e[scores={use_light=..0}] use_light 0

execute as @e[tag=amethystBottleEntity] at @s run function bottle_o_light:tick_bottle_entity

execute as @a[predicate=bottle_o_light:holding_light_block] at @s if score dummy light_block matches 0 align xyz run function bottle_o_light:light_block_x
execute as @e[tag=light_block] at @s run particle minecraft:block_marker light ~ ~ ~
scoreboard players add dummy light_block 1
execute if score dummy light_block matches 2.. run scoreboard players set dummy light_block 0