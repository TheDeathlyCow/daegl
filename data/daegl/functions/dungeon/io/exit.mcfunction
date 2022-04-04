
scoreboard players reset @s daegl_logout_count
tag @s remove in_daegl

teleport @s ~ ~ ~-5

clear @s netherite_pickaxe{DaeglItem:1b}
clear @s torch{DaeglItem:1b}

function daegl:dungeon/io/inventory/restore