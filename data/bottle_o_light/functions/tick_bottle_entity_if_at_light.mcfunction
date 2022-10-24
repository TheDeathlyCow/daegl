
execute as @p unless entity @s[gamemode=creative] run give @s minecraft:light 1
playsound minecraft:item.bottle.fill_dragonbreath block @p ~ ~ ~
particle minecraft:glow ~ ~ ~ 0 0 0 1 10 normal

setblock ~ ~ ~ minecraft:air replace