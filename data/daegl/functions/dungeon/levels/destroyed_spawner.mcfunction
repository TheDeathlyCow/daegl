# asat player who destroyed a spawner

scoreboard players operation spawners_destroyed daegl.game_variables += @s daegl.spawners_destroyed
scoreboard players reset @s daegl.spawners_destroyed

effect give @s minecraft:haste 10 2
effect give @s minecraft:speed 10 1

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~

tellraw @a[tag=in_daegl] {"nbt":"system.spawners_destroyed", "storage": "daegl:dialogue", "interpret": true}


advancement revoke @s only daegl:events/destroyed_spawner