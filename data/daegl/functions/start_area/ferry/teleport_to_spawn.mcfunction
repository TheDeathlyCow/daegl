# as player ready to teleport to spawn, at self

tellraw @s [{"text": "Welcome to Spawn!", "color": "gold"}]

execute in minecraft:overworld run tp @p 1059.31 88.00 35.11 240.92 -14.55
execute at @s run playsound minecraft:entity.fishing_bobber.splash master @s ~ ~ ~
execute at @s run spawnpoint @s ~ ~ ~

gamemode survival @s
team leave @s

advancement revoke @s only daegl:events/enter_ferry_at_daegl