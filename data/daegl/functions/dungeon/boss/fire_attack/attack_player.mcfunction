# asat daegl players


execute at @e[tag=daegl.boss_summon_marker] run function daegl:dungeon/boss/fire_attack/attack_as_marker

tag @s add daegl.summoning_fireball
execute as @e[tag=daegl.boss_fireball,tag=!pushed] at @s run function daegl:dungeon/boss/fire_attack/push_fireball
tag @s remove daegl.summoning_fireball