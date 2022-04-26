# as player to give pickaxe to, at self
scoreboard players add @s daegl.upgrades.fortune 0
scoreboard players add @s daegl.upgrades.efficiency 0
scoreboard players add @s daegl.upgrades.pickaxe_tier 0

execute store result score daegl.dungeon.io._private.create_pickaxe#fortune_level daegl.function_params run scoreboard players get @s daegl.upgrades.fortune
execute store result score daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params run scoreboard players get @s daegl.upgrades.efficiency
execute store result score daegl.dungeon.io._private.create_pickaxe#pickaxe_tier daegl.function_params run scoreboard players get @s daegl.upgrades.pickaxe_tier

execute as @e[tag=daegl_inventory_marker,limit=1] run function daegl:dungeon/io/_private/create_pickaxe

summon item ~ ~3 ~ {Item:{id:"minecraft:stone",Count:1b},Tags:["daegl_pickaxe_item"]}
data modify entity @e[type=item,tag=daegl_pickaxe_item,dx=0,dy=3,dz=0,sort=nearest,limit=1] Item set from entity @e[tag=daegl_inventory_marker,limit=1] ArmorItems[3]
item replace entity @e[tag=daegl_inventory_marker,limit=1] armor.head with air