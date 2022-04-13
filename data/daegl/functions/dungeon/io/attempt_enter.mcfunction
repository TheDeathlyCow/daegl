## as player trying to enter dungeon, at self

function daegl:dungeon/util/count_players

execute store success score party_has_room daegl.temp if score player_count daegl.game_variables < MAX_PLAYERS daegl.constants
execute store success score in_right_game_stage daegl.temp if score current daegl.game_stage matches 0..1

execute if score party_has_room daegl.temp matches 1 if score in_right_game_stage daegl.temp matches 1 run function daegl:dungeon/io/enter

scoreboard players reset * daegl.temp

