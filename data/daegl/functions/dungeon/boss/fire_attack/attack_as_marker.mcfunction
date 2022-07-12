# asat summon marker

place feature daegl:boss_fire_attack ~ ~ ~

particle minecraft:flame ~ ~1 ~ 0.5 2 0.5 0.2 75

playsound minecraft:entity.blaze.death master @a[tag=in_daegl] ~ ~ ~ 1 1.7

execute if predicate daegl:should_summon_minion run summon minecraft:magma_cube ~ ~ ~ {Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy",Size:1}
execute if predicate daegl:should_summon_minion run summon minecraft:magma_cube ~ ~ ~ {Tags:["daegl_mob"],DeathLootTable:"daegl:entities/standard_enemy",Size:1}
