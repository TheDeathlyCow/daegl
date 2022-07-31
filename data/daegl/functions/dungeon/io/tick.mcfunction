# as server, at worldspawn, only when dungeon is active

scoreboard players operation previous_player_count daegl.temp = player_count daegl.game_variables 

function daegl:dungeon/util/count_players

execute if score previous_player_count daegl.temp > #0 daegl.constants if score player_count daegl.game_variables < previous_player_count daegl.temp run function daegl:dungeon/io/exit

scoreboard players reset previous_player_count daegl.temp