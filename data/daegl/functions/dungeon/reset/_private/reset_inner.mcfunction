# as arbitary, at daegl reset pos

forceload add ~ ~ ~362 ~250

kill @e[tag=daegl.start_level_tutorial]

function daegl:dungeon/levels/clear_tickers

bossbar remove daegl:final_bossbar
bossbar remove daegl:resource_bossbar
teleport @e[tag=daegl_mob] ~ -255 ~
kill @e[tag=daegl_boss]
kill @e[tag=brewer_merchant]
kill @e[tag=daegl.boss_rider] 
execute at @e[tag=daegl_lever] run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:lever
execute as @e[type=marker,tag=daegl_reset_marker] at @s run function daegl:dungeon/reset/_private/marker_reset
function daegl:dungeon/reset/_private/place_levels
kill @e[dx=362,dy=200,dz=250,type=item,tag=!preserved_item,predicate=daegl:in_daegl_dim]
tellraw @a[tag=debug] "Reset daegl"

forceload remove ~ ~ ~362 ~250
