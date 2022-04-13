# as player who is entering dungeon, at arbitary location

function #rx.playerdb:api/v2/get/self

execute store result score @s daegl.xp_backup run experience query @s levels
data modify storage rx.playerdb:io player.data.daegl.restore.inventory set from entity @s Inventory
data modify storage rx.playerdb:io player.data.daegl.restore.ender_chest set from entity @s EnderItems

function #rx.playerdb:api/v2/save/self