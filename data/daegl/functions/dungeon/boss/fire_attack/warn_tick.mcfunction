# asat server 
schedule function daegl:dungeon/boss/fire_attack/warn_tick 1t

execute as @e[tag=final_boss_marker,limit=1] at @s run particle minecraft:flame ~ ~ ~ 3 20 3 0.1 25
