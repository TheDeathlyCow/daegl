# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/3/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_GOLD daegl.game_stage

bossbar remove daegl:resource_bossbar
execute as @e[type=marker,tag=daegl_gold_lever,limit=1] at @s run function daegl:dungeon/levels/3/prep/place_lever

function daegl:dialogue/speak/complete/iron
