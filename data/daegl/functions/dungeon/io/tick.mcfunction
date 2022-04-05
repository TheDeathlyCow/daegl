# as server, at worldspawn, only when dungeon is active

function daegl:dungeon/count_players

execute if score player_count daegl.game_variables matches 0 run function daegl:dungeon/io/exit