# asat poison attack marker

summon minecraft:potion ~ ~2 ~ {Item:{id:"minecraft:lingering_potion",Count:1b,tag:{Potion:"minecraft:strong_poison"}}} 

summon husk ~ ~ ~ {DeathLootTable:"daegl:entities/standard_enemy",Tags:["daegl_mob"],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:19999800,ShowParticles:0b}]}

execute if predicate daegl:should_summon_minion run summon husk ~ ~ ~ {DeathLootTable:"daegl:entities/standard_enemy",Tags:["daegl_mob"],HandItems:[{id:"minecraft:stick",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:3s}]}},{}],HandDropChances:[-1000.000F,0.085F],ActiveEffects:[{Id:12,Amplifier:0b,Duration:19999800,ShowParticles:0b}]}