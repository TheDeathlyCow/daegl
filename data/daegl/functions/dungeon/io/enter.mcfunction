# as player, at self

scoreboard players reset @s daegl.logout_count
scoreboard players set @s daegl.levels_completed 0
tag @s add in_daegl

function daegl:dungeon/io/inventory/save
function daegl:dungeon/io/give_start_kit

teleport @s ~ ~ ~5

function daegl:dungeon/count_players

execute if score current daegl.game_stage = INACTIVE daegl.game_stage run schedule function daegl:dungeon/levels/1/prep/start 1t replace