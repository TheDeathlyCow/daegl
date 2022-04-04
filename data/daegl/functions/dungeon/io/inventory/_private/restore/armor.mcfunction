data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:103b}]
execute as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
item replace entity @s armor.head from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:102b}]
execute as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
item replace entity @s armor.chest from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:101b}]
execute as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
item replace entity @s armor.legs from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:100b}]
execute as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
item replace entity @s armor.feet from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet
