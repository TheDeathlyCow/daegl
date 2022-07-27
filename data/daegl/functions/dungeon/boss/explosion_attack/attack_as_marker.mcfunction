# asat explosion marker

particle explosion ~ ~ ~ 1.5 0.75 1.5 1 50 force

playsound entity.generic.explode master @a ~ ~ ~ 3 

summon potion ~ ~ ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{CustomPotionEffects:[{Id:7b,Amplifier:2b,Duration:1}],Potion:"strong_harming"}}}

tag @s remove unexploded

execute if entity @e[tag=daegl.boss_explosion_marker,tag=unexploded] run schedule function daegl:dungeon/boss/explosion_attack/next_explosion 4t

execute if predicate daegl:should_summon_minion run summon minecraft:zombie_villager ~ ~ ~ {IsBaby:1b,Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy",ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999800,ShowParticles:0b}]}

function tnsrandom:next_int

scoreboard players operation $selected_creeper_boss daegl.temp = current tnsrandom
scoreboard players operation $selected_creeper_boss daegl.temp %= #3 daegl.constants

execute if score $selected_creeper_boss daegl.temp matches 0 run summon creeper ~ ~3 ~ {Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy"}
execute if score $selected_creeper_boss daegl.temp matches 1 run summon creeper ~ ~3 ~ {Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy"}
execute if score $selected_creeper_boss daegl.temp matches 2 run summon creeper ~ ~3 ~ {Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy",ActiveEffects:[{Id:4,Amplifier:1b,Duration:400}]}

scoreboard players reset $selected_creeper_boss daegl.temp