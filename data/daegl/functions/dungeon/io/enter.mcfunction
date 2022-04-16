# as player, at self

tellraw @s [{"text": "Welcome to the ","color": "red"},{"text": "Mines of Daegl","color": "gold","bold": true},"!"]

scoreboard players reset @s daegl.logout_count
scoreboard players set @s daegl.levels_completed 0
tag @s add in_daegl

function daegl:dungeon/io/inventory/save
function daegl:dungeon/io/give_start_kit

advancement revoke @s from daegl:events/start_level/root

teleport @s ~ ~ ~5

function daegl:dungeon/util/count_players
execute if score player_count daegl.game_variables = #1 daegl.constants run function daegl:dungeon/io/begin_dungeon_countdown
execute if score current daegl.game_stage = INACTIVE daegl.game_stage run schedule function daegl:dungeon/levels/1/prep/start 1t replace