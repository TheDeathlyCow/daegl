# as player, at self

scoreboard players reset @s daegl_logout_count
scoreboard players set @s daegl_levels_completed 0
tag @s add in_daegl

function daegl:dungeon/io/inventory/save
function daegl:dungeon/io/give_start_kit

teleport @s ~ ~ ~5