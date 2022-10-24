## asat arbitary
## Creates the resource bossbar `daegl:resource_bossbar` with the maximum value set
## from the score of `level_spawner_count daegl.game_variables`. Display should
## be configured per level, and this will set the display to some random default values.
## Will also remove any old bossbars to prevent any unwanted carry-over data.

# adjust level spawner count
tellraw @a[tag=debug] ["Spawner counter before=", {"score":{"name": "level_spawner_count", "objective": "daegl.game_variables"}}]
scoreboard players operation level_spawner_count daegl.game_variables *= SPAWNER_MULTIPLIER_NUMERATOR daegl.constants
scoreboard players operation level_spawner_count daegl.game_variables /= SPAWNER_MULTIPLIER_DENOMINATOR daegl.constants
tellraw @a[tag=debug] ["Spawner counter after=", {"score":{"name": "level_spawner_count", "objective": "daegl.game_variables"}}]

bossbar remove daegl:resource_bossbar
bossbar add daegl:resource_bossbar [{"text": "Spawners Destroyed"}]
execute store result bossbar daegl:resource_bossbar max run scoreboard players get level_spawner_count daegl.game_variables
bossbar set daegl:resource_bossbar value 0
bossbar set daegl:resource_bossbar players @a[tag=in_daegl]
bossbar set daegl:resource_bossbar visible true
bossbar set daegl:resource_bossbar style progress

#scoreboard players reset daegl.dungeon.util.create_resource_bossbar#max daegl.function_params

