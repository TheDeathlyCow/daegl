# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/4/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_CRYSTAL daegl.game_stage

bossbar remove daegl:resource_bossbar
execute as @e[type=marker,tag=daegl_crystal_lever,limit=1] at @s run function daegl:dungeon/levels/4/prep/place_lever

function daegl:dialogue/speak/complete/gold
