# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/3/play/ticker 1t replace

scoreboard players operation current daegl.game_stage = GOLD daegl.game_stage

scoreboard players reset resource_count daegl.game_variables

scoreboard players operation daegl.dungeon.util.create_resource_bossbar#max daegl.function_params = GOLD_AMOUNT daegl.constants
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color yellow
bossbar set daegl:resource_bossbar name [{"text": "Gold Ore Gathered", "color": "#FFD700", "bold": true}]