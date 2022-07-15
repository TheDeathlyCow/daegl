# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/3/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Gold Caves"}]
scoreboard players operation current daegl.game_stage = GOLD daegl.game_stage

scoreboard players set @a[tag=in_daegl] daegl.spawners_destroyed 0
scoreboard players set spawners_destroyed daegl.game_variables 0
execute store result score level_spawner_count daegl.game_variables if entity @e[tag=daegl.gold_spawner]
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color yellow
bossbar set daegl:resource_bossbar name [{"text": "Spawners Destroyed", "color": "#FFD700", "bold": true}]

function daegl:dialogue/speak/start/gold

execute in tns8wg:dungeon_dim positioned 6002 14 -4150 run function daegl:util/create_fake_explosion 

execute as @e[tag=daegl.fireboss_marker_gold] at @s run function daegl:dungeon/levels/3/play/summon_fireboss

kill @e[tag=daegl.start_level_tutorial]

execute as @e[tag=daegl.gold_spawner] at @s run function daegl:dungeon/levels/place_spawner_at_marker
