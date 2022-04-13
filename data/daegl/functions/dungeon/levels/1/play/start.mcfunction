# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/1/play/ticker 1t replace

tellraw @a [{"text": "Start Copper Caves"}]
scoreboard players operation current daegl.game_stage = COPPER daegl.game_stage