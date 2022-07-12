# asat explosion marker

particle explosion ~ ~ ~ 1.5 0.75 1.5 1 50 force

playsound entity.generic.explode master @a ~ ~ ~ 3 

summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}],Potion:"strong_harming"}}}

tag @s remove unexploded

execute if entity @e[tag=daegl.boss_explosion_marker,tag=unexploded] run schedule function daegl:dungeon/boss/explosion_attack/next_explosion 4t

execute if predicate daegl:should_summon_minion run summon minecraft:zombie_villager ~ ~ ~ {IsBaby:1b,Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy"}