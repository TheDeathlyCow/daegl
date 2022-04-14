# as player, at self

effect clear @s
effect give @s instant_health 1 255
effect give @s saturation 1 255

give @s netherite_pickaxe{display:{Name:'{"text":"Miner\'s Pickaxe","italic":false}'},CanDestroy:["#daegl:ores"],Unbreakable:1b,DaeglPickaxe:1b,HideFlags:28} 1
#give @s torch{CanPlaceOn:["#daegl:torch_placeable_on"],HideFlags:24,DaeglItem:1b} 128