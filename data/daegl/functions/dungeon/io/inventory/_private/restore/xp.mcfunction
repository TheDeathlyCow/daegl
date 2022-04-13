# as player getting xp restored, at self

experience set @s 0 levels
experience set @s 0 points

execute if score @s daegl.xp_backup > #0 daegl.constants run function daegl:dungeon/io/inventory/_private/restore/_private/xp_loop