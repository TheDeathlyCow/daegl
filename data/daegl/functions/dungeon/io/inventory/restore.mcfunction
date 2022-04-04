# as player getting inventory restored, as arbitary location

clear @s

function #rx.playerdb:api/v2/get/self


data modify entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] ArmorItems[0] set from storage rx.playerdb:io player.data.daegl[0]
item replace entity @s inventory.0 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

function daegl:dungeon/io/inventory/clear