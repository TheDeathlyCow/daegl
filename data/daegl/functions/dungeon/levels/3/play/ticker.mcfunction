# as server, at world spawn

schedule function daegl:dungeon/levels/3/play/ticker 2t

execute store result bossbar daegl:resource_bossbar value run scoreboard players get spawners_destroyed daegl.game_variables

execute if score spawners_destroyed daegl.game_variables >= level_spawner_count daegl.game_variables run function daegl:dungeon/levels/4/prep/start