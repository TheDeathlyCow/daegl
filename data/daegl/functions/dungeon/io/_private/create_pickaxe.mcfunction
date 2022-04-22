# as daegl inventory armor stand, at arbitrary
# params: daegl.dungeon.io._private.create_pickaxe#fortune_level
#         daegl.dungeon.io._private.create_pickaxe#efficiency_level
# desc: places a pickaxe in the head slot and modifies it with enchantments according to parameters


item replace entity @e[tag=daegl_inventory_marker,limit=1] armor.head with iron_pickaxe{display:{Name:'{"text":"Miner\'s Pickaxe","italic":false}'},CanDestroy:["#daegl:ores"],Unbreakable:1b,DaeglPickaxe:1b,HideFlags:28}

execute if score daegl.dungeon.io._private.create_pickaxe#fortune_level daegl.function_params > #0 daegl.constants run function daegl:dungeon/io/_private/_private/add_fortune
execute if score daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params > #0 daegl.constants run function daegl:dungeon/io/_private/_private/add_efficiency

scoreboard players reset daegl.dungeon.io._private.create_pickaxe#fortune_level daegl.function_params
scoreboard players reset daegl.dungeon.io._private.create_pickaxe#efficiency_level daegl.function_params
