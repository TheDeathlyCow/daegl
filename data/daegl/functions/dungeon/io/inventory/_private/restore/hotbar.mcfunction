data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:0b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.0 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:1b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.1 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:2b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.2 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:3b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.3 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:4b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.4 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:5b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.5 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:6b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.6 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:7b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.7 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet

data modify storage daegl:inventory temp_restore set value {}
data modify storage daegl:inventory temp_restore set from storage rx.playerdb:io player.data.daegl.restore.inventory[{Slot:8b}]
execute if data storage daegl:inventory temp_restore as @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/inventory/_private/set_armor_stand_feet
execute if data storage daegl:inventory temp_restore run item replace entity @s hotbar.8 from entity @e[type=armor_stand,tag=daegl_inventory_marker,limit=1] armor.feet
