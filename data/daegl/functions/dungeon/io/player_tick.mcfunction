# as all players, at self

execute store success score $in_daegl daegl_temp if entity @s[tag=in_daegl]

execute if score $in_daegl daegl_temp matches 0 run function daegl:dungeon/io/_private/player_tick_not_in_daegl
execute if score $in_daegl daegl_temp matches 1 run function daegl:dungeon/io/_private/player_tick_in_daegl

scoreboard players reset $in_daegl daegl_temp

