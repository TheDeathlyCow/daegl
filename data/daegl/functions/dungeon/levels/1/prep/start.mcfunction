# asat arbitrary

schedule clear #daegl:dungeon/level_tickers

schedule function daegl:dungeon/levels/1/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_COPPER daegl.game_stage

scoreboard players operation resource_bossbar_max_value daegl.game_variables = COPPER_AMOUNT daegl.constants
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color green
