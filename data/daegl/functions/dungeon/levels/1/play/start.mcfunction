# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/1/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Copper Caves"}]
scoreboard players operation current daegl.game_stage = COPPER daegl.game_stage

scoreboard players set @a[tag=in_daegl] daegl.spawners_destroyed 0
scoreboard players set spawners_destroyed daegl.game_variables 0
execute store result score level_spawner_count daegl.game_variables if entity @e[tag=daegl.copper_spawner]
function daegl:dungeon/util/create_resource_bossbar
bossbar set daegl:resource_bossbar color green
bossbar set daegl:resource_bossbar name [{"text": "Spawners Destroyed", "color": "#B87333", "bold": true}]

execute as @e[tag=daegl.copper_spawner] at @s run function daegl:dungeon/levels/place_spawner_at_marker