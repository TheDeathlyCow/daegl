## as player trying to enter dungeon, at self

function daegl:dungeon/util/count_players


# party has room bool
execute store success score daegl.dungeon.io.attempt_enter#party_has_room daegl.temp if score player_count daegl.game_variables < MAX_PLAYERS daegl.constants
# in right stage bool
execute store success score daegl.dungeon.io.attempt_enter#in_right_game_stage daegl.temp if score current daegl.game_stage matches 0..1
# in time bool
execute store result score daegl.dungeon.io.attempt_enter#time daegl.temp run time query gametime
scoreboard players operation daegl.dungeon.io.attempt_enter#time daegl.temp -= time_first_player_entered daegl.game_variables
execute store success score daegl.dungeon.io.attempt_enter#in_time daegl.temp if score daegl.dungeon.io.attempt_enter#time daegl.temp <= ENTER_DUNGEON_WINDOW daegl.constants
execute if score player_count daegl.game_variables = #0 daegl.constants run scoreboard players set daegl.dungeon.io.attempt_enter#in_time daegl.temp 1
# space time between runs 
scoreboard players add @s daegl.time_finished 0
execute store result score daegl.dungeon.io.attempt_enter#time daegl.temp run time query gametime
scoreboard players operation daegl.dungeon.io.attempt_enter#time daegl.temp -= @s daegl.time_finished
execute store success score daegl.dungeon.io.attempt_enter#last_run_long_ago daegl.temp if score daegl.dungeon.io.attempt_enter#time daegl.temp >= MIN_TIME_BETWEEN_RUNS daegl.constants
execute if score @s daegl.time_finished matches 0 run scoreboard players set daegl.dungeon.io.attempt_enter#last_run_long_ago daegl.temp 1

execute if score daegl.dungeon.io.attempt_enter#in_time daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/not_in_time
execute if score daegl.dungeon.io.attempt_enter#party_has_room daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/party_full
execute if score daegl.dungeon.io.attempt_enter#in_right_game_stage daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/game_already_started
execute if score daegl.dungeon.io.attempt_enter#last_run_long_ago daegl.temp = #false daegl.constants run function daegl:dungeon/io/_private/deny_reason/last_run_too_soon

execute if score daegl.dungeon.io.attempt_enter#in_time daegl.temp = #true daegl.constants if score daegl.dungeon.io.attempt_enter#party_has_room daegl.temp = #true daegl.constants if score daegl.dungeon.io.attempt_enter#in_right_game_stage daegl.temp = #true daegl.constants if score daegl.dungeon.io.attempt_enter#last_run_long_ago daegl.temp = #true daegl.constants run function daegl:dungeon/io/enter

scoreboard players reset daegl.dungeon.io.attempt_enter#in_time daegl.temp
scoreboard players reset daegl.dungeon.io.attempt_enter#party_has_room daegl.temp
scoreboard players reset daegl.dungeon.io.attempt_enter#in_right_game_stage daegl.temp
scoreboard players reset daegl.dungeon.io.attempt_enter#time daegl.temp
scoreboard players reset daegl.dungeon.io.attempt_enter#last_run_long_ago daegl.temp

