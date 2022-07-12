# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/3/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Gold Caves"}]
scoreboard players operation current daegl.game_stage = GOLD daegl.game_stage

scoreboard players reset resource_count daegl.game_variables

scoreboard players operation daegl.dungeon.util.create_resource_bossbar#max daegl.function_params = GOLD_AMOUNT daegl.constants
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color yellow
bossbar set daegl:resource_bossbar name [{"text": "Gold Ore Processed", "color": "#FFD700", "bold": true}]

function daegl:dialogue/speak/start/gold

execute in tns8wg:dungeon_dim positioned 6002 14 -4150 run function daegl:util/create_fake_explosion 

execute as @e[tag=daegl.fireboss_marker_gold] at @s run function daegl:dungeon/levels/3/play/summon_fireboss
