# as player who is entering dungeon, at arbitary location

function #rx.playerdb:api/v2/get/self

data modify storage rx.playerdb:io player.data.daegl.restore.inventory set from entity @s Inventory
data modify storage rx.playerdb:io player.data.daegl.restore.ender_chest set from entity @s EnderItems

function #rx.playerdb:api/v2/save/self