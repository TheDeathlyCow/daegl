# asat arbitary
# removes all players from the dungeon

execute as @a[tag=in_daegl] at @s run function daegl:dungeon/io/exit_player

scoreboard players operation current daegl.game_stage = INACTIVE daegl.game_stage
scoreboard players reset time_first_player_entered daegl.game_variables

schedule clear daegl:dialogue/speak/play_message/lord
schedule clear daegl:dialogue/speak/play_message/boss
schedule clear daegl:dialogue/speak/play_message/merchant

tellraw @a [{"text": "","color": "red"},{"text": "WARNING! ", "color": "dark_red", "bold": true},{"text": "Resetting the Mines of Daegl! There may be some lag!"}]
function daegl:dungeon/reset/reset