# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/2/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_IRON daegl.game_stage

bossbar remove daegl:resource_bossbar
execute as @e[type=marker,tag=daegl_iron_lever,limit=1] at @s run function daegl:dungeon/levels/2/prep/place_lever

advancement grant @a[tag=in_daegl] only daegl:dungeon_levels/complete_copper_caves

function daegl:dialogue/speak/complete/copper
