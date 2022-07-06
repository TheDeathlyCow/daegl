# asat fireball to be pushed

execute store result score FireballX daegl.fireball_attack_vectors run data get entity @s Pos[0] 1000
execute store result score FireballY daegl.fireball_attack_vectors run data get entity @s Pos[1] 1000
execute store result score FireballZ daegl.fireball_attack_vectors run data get entity @s Pos[2] 1000

execute store result score PlayerX daegl.fireball_attack_vectors run data get entity @p[tag=daegl.summoning_fireball] Pos[0] 1000
execute store result score PlayerY daegl.fireball_attack_vectors run data get entity @p[tag=daegl.summoning_fireball] Pos[1] 1000
execute store result score PlayerZ daegl.fireball_attack_vectors run data get entity @p[tag=daegl.summoning_fireball] Pos[2] 1000

scoreboard players operation MotionX daegl.fireball_attack_vectors = PlayerX daegl.fireball_attack_vectors
scoreboard players operation MotionY daegl.fireball_attack_vectors = PlayerY daegl.fireball_attack_vectors
scoreboard players operation MotionZ daegl.fireball_attack_vectors = PlayerZ daegl.fireball_attack_vectors

scoreboard players operation MotionX daegl.fireball_attack_vectors -= FireballX daegl.fireball_attack_vectors
scoreboard players operation MotionY daegl.fireball_attack_vectors -= FireballY daegl.fireball_attack_vectors
scoreboard players operation MotionZ daegl.fireball_attack_vectors -= FireballZ daegl.fireball_attack_vectors

execute store result entity @s Motion[0] double 0.001 run scoreboard players get MotionX daegl.fireball_attack_vectors 
execute store result entity @s Motion[1] double 0.001 run scoreboard players get MotionY daegl.fireball_attack_vectors 
execute store result entity @s Motion[2] double 0.001 run scoreboard players get MotionZ daegl.fireball_attack_vectors 

tag @s add pushed


#data modify entity @s Motion[0] set value -10.757d

tellraw @p {"nbt":"Motion","entity":"@s"}