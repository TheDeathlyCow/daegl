## asat arbitary
## Creates the resource bossbar `daegl:resource_bossbar` with the maximum value set
## from the score of `daegl.dungeon.util.create_resource_bossbar#max daegl.function_params`. Display should
## be configured per level, and this will set the display to some random default values.
## Will also remove any old bossbars to prevent any unwanted carry-over data.
##
## Params: max - The max value of the bossbar 

bossbar remove daegl:resource_bossbar
bossbar add daegl:resource_bossbar [{"text": "Resource Bossbar"}]
execute store result bossbar daegl:resource_bossbar max run scoreboard players get daegl.dungeon.util.create_resource_bossbar#max daegl.function_params
bossbar set daegl:resource_bossbar value 0
bossbar set daegl:resource_bossbar players @a[tag=in_daegl]
bossbar set daegl:resource_bossbar visible true
bossbar set daegl:resource_bossbar style progress

scoreboard players reset daegl.dungeon.util.create_resource_bossbar#max daegl.function_params

