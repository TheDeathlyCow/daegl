# as server, at worldspawn, only when dungeon is active

function daegl:dungeon/util/count_players

execute if score player_count daegl.game_variables <= #0 daegl.constants run function daegl:dungeon/io/exit