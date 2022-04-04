# as player who is entering dungeon, at arbitary location

function #rx.playerdb:api/v2/get/self

data modify storage rx.playerdb:io player.data.daegl set from entity @s Inventory

function #rx.playerdb:api/v2/save/self