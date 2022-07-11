# as server, at world spawn

schedule function daegl:dungeon/levels/2/play/ticker 2t

execute store result bossbar daegl:resource_bossbar value run scoreboard players get resource_count daegl.game_variables

execute as @e[tag=daegl.iron_fireboss,limit=1] at @s if predicate daegl:in_lava run teleport @s ^ ^0.2 ^0.5

execute if score resource_count daegl.game_variables >= IRON_AMOUNT daegl.constants run function daegl:dungeon/levels/3/prep/start