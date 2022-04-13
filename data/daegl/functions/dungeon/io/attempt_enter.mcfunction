## as player trying to enter dungeon, at self

function daegl:dungeon/util/count_players

execute store success score party_has_room daegl.temp if score player_count daegl.game_variables < MAX_PLAYERS daegl.constants
execute store success score in_right_game_stage daegl.temp if score current daegl.game_stage matches 0..1
execute store result score time daegl.temp run time query gametime
scoreboard players operation time daegl.temp -= time_first_player_entered daegl.game_variables
execute store success score in_time daegl.temp if score time daegl.temp <= ENTER_DUNGEON_WINDOW daegl.constants
execute if score player_count daegl.game_variables = #0 daegl.constants run scoreboard players set in_time daegl.temp 1

execute if score in_time daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/not_in_time
execute if score party_has_room daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/party_full
execute if score in_right_game_stage daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/game_already_started

execute if score in_time daegl.temp = #true daegl.constants if score party_has_room daegl.temp = #true daegl.constants if score in_right_game_stage daegl.temp = #true daegl.constants run function daegl:dungeon/io/enter

scoreboard players reset * daegl.temp

