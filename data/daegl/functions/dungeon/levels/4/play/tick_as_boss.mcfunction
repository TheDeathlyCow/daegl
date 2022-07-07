# asat daegl boss


data modify storage daegl:boss_fight boss_entity_data set from entity @s

scoreboard players set boss_health daegl.game_variables 0
execute store result score boss_health daegl.game_variables run data get storage daegl:boss_fight boss_entity_data.Health
execute store result bossbar daegl:final_bossbar value run scoreboard players get boss_health daegl.game_variables

effect clear @s minecraft:poison

execute if predicate daegl:is_on_fire run data modify entity @s Fire set value 0s