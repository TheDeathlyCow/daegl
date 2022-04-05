# as server, at worldspawn

schedule function #daegl:tick 1t replace

execute unless score current daegl.game_stage = INACTIVE daegl.game_stage run function #daegl:active_tick
execute as @a at @s run function #daegl:player_tick 