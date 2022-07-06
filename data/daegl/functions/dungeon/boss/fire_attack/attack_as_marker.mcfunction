# asat summon marker

#summon blaze ~ ~ ~ {DeathLootTable:"daegl:entities/standard_enemy",CustomName:'{"text":"Fire Spirit","color":"gold"}',Tags:["daegl_mob","daegl.fire_spirit"]}
#summon blaze ~ ~3 ~ {DeathLootTable:"daegl:entities/standard_enemy",CustomName:'{"text":"Fire Spirit","color":"gold"}',Tags:["daegl_mob","daegl.fire_spirit"]}
#summon blaze ~ ~6 ~ {DeathLootTable:"daegl:entities/standard_enemy",CustomName:'{"text":"Fire Spirit","color":"gold"}',Tags:["daegl_mob","daegl.fire_spirit"]}


summon fireball ~ ~1 ~ {Tags:["daegl.boss_fireball"]}

particle minecraft:flame ~ ~1 ~ 0.5 2 0.5 0.2 25

playsound minecraft:entity.blaze.death master @a[tag=in_daegl] ~ ~ ~ 1 1.7