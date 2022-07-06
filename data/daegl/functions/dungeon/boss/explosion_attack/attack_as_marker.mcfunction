# asat explosion marker

particle explosion ~ ~ ~ 1.5 0.75 1.5 1 50 force

playsound entity.generic.explode master @a ~ ~ ~ 3 

summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:strong_harming"}}}

tag @s remove unexploded

execute if entity @e[tag=daegl.boss_explosion_marker,tag=unexploded] run schedule function daegl:dungeon/boss/explosion_attack/next_explosion 4t