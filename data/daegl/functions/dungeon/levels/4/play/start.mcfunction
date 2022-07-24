# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/4/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Crystal Caves"}]
scoreboard players operation current daegl.game_stage = CRYSTAL daegl.game_stage

scoreboard players reset resource_count daegl.game_variables

execute at @e[type=marker,tag=final_boss_marker] run summon giant ~ ~ ~ {PersistenceRequired:1b,Health:750f,Rotation:[-90F,0F],Tags:["daegl_boss"],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Invisible:1b,Tags:["daegl.boss_rider"]}],ArmorItems:[{id:"minecraft:netherite_boots",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:diamond_leggings",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:chainmail_chestplate",Count:1b,tag:{Unbreakable:1b}},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:1s},{id:"minecraft:projectile_protection",lvl:10s}]}}],ArmorDropChances:[-327.670F,-327.670F,-327.670F,-327.670F],ActiveEffects:[{Id:12b,Amplifier:0b,Duration:199999980,ShowParticles:0b},{Id:24b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.max_health,Base:750},{Name:generic.knockback_resistance,Base:1.0}]}

execute as @e[tag=daegl_boss,limit=1] at @s run function daegl:dungeon/levels/4/play/build_boss

execute in tns8wg:dungeon_dim positioned 5953 -6 -4149 run function daegl:util/create_fake_explosion 

schedule function daegl:dungeon/boss/start_next_attack 30s

execute in tns8wg:dungeon_dim run spawnpoint @a[tag=in_daegl] 5854 -20 -4146

kill @e[tag=daegl.start_level_tutorial]
kill @e[tag=brewer_merchant]

