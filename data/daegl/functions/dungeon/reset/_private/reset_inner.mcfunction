# as arbitary, at daegl reset pos




teleport @e[tag=daegl_monster,predicate=daegl:in_daegl_dim] ~ -255 ~
execute at @e[tag=daegl_lever] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:lever
execute as @e[type=marker,tag=daegl_reset_marker] at @s run function daegl:dungeon/reset/_private/marker_reset
function daegl:dungeon/reset/_private/place_levels
kill @e[dx=362,dy=200,dz=250,type=item,tag=!preserved_item,predicate=daegl:in_daegl_dim]

tellraw @a[tag=debug] "Reset daegl"