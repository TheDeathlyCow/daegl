# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/2/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Iron Caves"}]
scoreboard players operation current daegl.game_stage = IRON daegl.game_stage

scoreboard players set @a[tag=in_daegl] daegl.spawners_destroyed 0
scoreboard players set spawners_destroyed daegl.game_variables 0
execute store result score level_spawner_count daegl.game_variables if entity @e[tag=daegl.iron_spawner]
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color white
bossbar set daegl:resource_bossbar name [{"text": "Spawners Destroyed", "color": "#C0C0C0", "bold": true}]

execute in tns8wg:dungeon_dim positioned 5989 39 -4132 run function daegl:util/create_fake_explosion 

execute as @e[tag=daegl.fireboss_marker_iron] at @s run function daegl:dungeon/levels/2/play/summon_fireboss

kill @e[tag=daegl.start_level_tutorial]

execute as @e[tag=daegl.copper_spawner] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=daegl.iron_spawner] at @s run function daegl:dungeon/levels/place_spawner_at_marker