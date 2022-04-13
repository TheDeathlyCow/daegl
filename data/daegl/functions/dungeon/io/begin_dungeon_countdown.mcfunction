# as first player to enter dungeon, at self 

execute store result score time_first_player_entered daegl.game_variables run time query gametime
scoreboard players operation seconds_to_enter daegl.temp = ENTER_DUNGEON_WINDOW daegl.constants
scoreboard players operation seconds_to_enter daegl.temp /= #20 daegl.constants

tellraw @s ""
tellraw @a [{"text": "","color": "red"},{"text": "[!!] ", "color": "gold", "bold": true},{"selector": "@s", "color": "gold", "bold": true}, " has entered the Mines of Daegl! All party members have ", {"score": {"name":"seconds_to_enter", "objective": "daegl.temp"}, "color": "gold", "bold": true}, " seconds to join before the gates close", {"text": " [!!]", "color": "gold", "bold": true}]

scoreboard players reset seconds_to_enter daegl.temp