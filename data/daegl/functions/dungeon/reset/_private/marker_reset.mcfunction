# as daegl reset marker, at self

setblock ~ ~ ~ structure_block[mode=load]
data modify block ~ ~ ~ posY set value 0
data modify block ~ ~ ~ name set from entity @s data.structure
setblock ~ ~1 ~ redstone_block
execute at @e[tag=daegl_lever] run setblock ~ ~ ~ air