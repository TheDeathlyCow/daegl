
execute as @p if entity @s[gamemode=!creative] unless block ~ ~ ~ minecraft:light run give @s panda_spawn_egg{display:{Name:'{"text":"Amethyst Bottle","italic":false}'},CustomModelData:92643180,EntityTag:{id:"minecraft:armor_stand",Small:1b,Invisible:1b,Tags:["amethystBottleEntity"]}} 1
execute if block ~ ~ ~ minecraft:light run function bottle_o_light:tick_bottle_entity_if_at_light

kill @s