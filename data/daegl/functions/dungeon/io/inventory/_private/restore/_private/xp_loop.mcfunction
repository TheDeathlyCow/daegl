## as player getting xp restored, at self

experience add @s 1 levels
scoreboard players remove @s daegl.xp_backup 1
execute if score @s daegl.xp_backup > #0 daegl.constants run function daegl:dungeon/io/inventory/_private/restore/_private/xp_loop