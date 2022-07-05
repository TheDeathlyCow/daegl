# asat server

execute at @a[tag=final_boss_marker,limit=1] as @e[tag=daegl.boss_explosion_marker,tag=unexploded,sort=nearest,limit=1] at @s run function daegl:dungeon/boss/explosion_attack/attack_as_marker
execute unless entity @e[tag=daegl.boss_explosion_marker,tag=unexploded] run function daegl:dungeon/boss/end_attack