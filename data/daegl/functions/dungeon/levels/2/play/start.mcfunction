# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/2/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Iron Caves"}]
scoreboard players operation current daegl.game_stage = IRON daegl.game_stage

scoreboard players reset resource_count daegl.game_variables

scoreboard players operation daegl.dungeon.util.create_resource_bossbar#max daegl.function_params = IRON_AMOUNT daegl.constants
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color white
bossbar set daegl:resource_bossbar name [{"text": "Iron Ore Processed", "color": "#C0C0C0", "bold": true}]

execute in tns8wg:dungeon_dim positioned 5989 39 -4132 run function daegl:util/create_fake_explosion 

execute as @e[tag=daegl.fireboss_marker_iron] at @s run function daegl:dungeon/levels/2/play/summon_fireboss

kill @e[tag=daegl.start_level_tutorial]

execute as @e[tag=daegl.iron_spawner] at @s run function daegl:dungeon/levels/place_spawner_at_marker