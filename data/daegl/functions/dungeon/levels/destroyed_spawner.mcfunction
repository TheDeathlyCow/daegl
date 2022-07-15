# asat player who destroyed a spawner

scoreboard players operation spawners_destroyed daegl.game_variables += @s daegl.spawners_destroyed
scoreboard players reset @s daegl.spawners_destroyed
advancement revoke @s only daegl:events/destroyed_spawner