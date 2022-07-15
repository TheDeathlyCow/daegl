# as server, at world spawn

schedule function daegl:dungeon/levels/2/play/ticker 2t

execute store result bossbar daegl:resource_bossbar value run scoreboard players get spawners_destroyed daegl.game_variables

execute as @e[tag=daegl.iron_fireboss,limit=1] at @s if predicate daegl:in_lava run teleport @s ^ ^0.2 ^0.5

execute if score spawners_destroyed daegl.game_variables >= level_spawner_count daegl.game_variables run function daegl:dungeon/levels/3/prep/start