# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/1/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_COPPER daegl.game_stage

