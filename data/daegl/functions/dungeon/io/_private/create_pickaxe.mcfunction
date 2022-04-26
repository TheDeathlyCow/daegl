# as daegl inventory armor stand, at arbitrary
# params: daegl.dungeon.io._private.create_pickaxe#fortune_level - the level of fortune to apply to the pickaxe
#         daegl.dungeon.io._private.create_pickaxe#efficiency_level - the level of efficiency to apply to the pickaxe
#         daegl.dungeon.io._private.create_pickaxe#pickaxe_tier - the level of material tier to apply to the pickaxe (iron=0, diamond=1)
# desc: places a pickaxe in the head slot and modifies it with enchantments according to parameters

execute if score daegl.dungeon.io._private.create_pickaxe#pickaxe_tier daegl.function_params matches 0 run item replace entity @e[tag=daegl_inventory_marker,limit=1] armor.head with iron_pickaxe
execute if score daegl.dungeon.io._private.create_pickaxe#pickaxe_tier daegl.function_params matches 1 run item replace entity @e[tag=daegl_inventory_marker,limit=1] armor.head with diamond_pickaxe

item modify entity @s armor.head daegl:set_pickaxe_nbt

execute if score daegl.dungeon.io._private.create_pickaxe#fortune_level daegl.function_params > #0 daegl.constants run function daegl:dungeon/io/_private/_private/add_fortune
execute if score daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params > #0 daegl.constants run function daegl:dungeon/io/_private/_private/add_efficiency

scoreboard players reset daegl.dungeon.io._private.create_pickaxe#fortune_level daegl.function_params
scoreboard players reset daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params
scoreboard players reset daegl.dungeon.io._private.create_pickaxe#pickaxe_tier daegl.function_params
