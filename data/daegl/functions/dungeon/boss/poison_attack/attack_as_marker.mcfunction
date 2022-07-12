# asat poison attack marker

summon minecraft:potion ~ ~2 ~ {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}} 

execute if predicate daegl:should_summon_minion run summon husk ~ ~ ~ {DeathLootTable:"daegl:entities/standard_enemy",Tags:["daegl_mob"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999800}]}