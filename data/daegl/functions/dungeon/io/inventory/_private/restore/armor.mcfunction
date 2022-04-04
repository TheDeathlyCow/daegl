data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:103b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s armor.head from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:102b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s armor.chest from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:101b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s armor.legs from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:100b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s armor.feet from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet
