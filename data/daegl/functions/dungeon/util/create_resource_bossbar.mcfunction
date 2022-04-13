## asat arbitary
## Creates the resource bossbar `daegl:resource_bossbar` with the maximum value set
## from the score of `resource_bossbar_max_value daegl.game_variables`. Display should
## be configured per level, and this will set the display to some random default values.
## Will also remove any old bossbars to prevent any unwanted carry-over data.

bossbar remove daegl:resource_bossbar
bossbar add daegl:resource_bossbar [{"text": "Resource Bossbar"}]
execute store result bossbar daegl:resource_bossbar max run scoreboard players get resource_bossbar_max_value daegl.game_variables
bossbar set daegl:resource_bossbar value 0
bossbar set daegl:resource_bossbar players @a[tag=in_daegl]
bossbar set daegl:resource_bossbar visible true

