
execute as @p if entity @s[gamemode=!creative] unless block ~ ~ ~ minecraft:light run give @s panda_spawn_egg{display:{Name:'{"text":"Amethyst Bottle","italic":false}'},CustomModelData:92643180,EntityTag:{id:"minecraft:armor_stand",Small:1b,Invisible:1b,Tags:["amethystBottleEntity"]}} 1

execute if block ~ ~ ~ minecraft:light run setblock ~ ~ ~ minecraft:air replace

kill @s