# as arbitary, at daegl reset pos

teleport @e[tag=daegl_monster] ~ -255 ~
kill @e[dx=500,dy=500,dz=500,type=item,tag=!preserved_item]

execute as @e[type=marker,tag=daegl_reset_marker] at @s run function daegl:dungeon/reset/_private/marker_reset