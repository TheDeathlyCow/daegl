# asat arbitary
# removes all players from the dungeon
execute as @a[tag=in_daegl] at @s run function daegl:dungeon/io/exit_player

bossbar remove daegl:resource_bossbar
function daegl:dungeon/levels/clear_tickers
scoreboard players operation current daegl.game_stage = INACTIVE daegl.game_stage
scoreboard players reset time_first_player_entered daegl.game_variables

function daegl:dungeon/reset/reset