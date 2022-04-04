
data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:-106b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s weapon.offhand from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet
