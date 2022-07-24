# as player ready to teleport to spawn, at self

tellraw @s [{"text": "Welcome to Spawn!", "color": "gold"}]

execute in minecraft:overworld run teleport @s -605 65 1382
execute at @s run playsound minecraft:entity.fishing_bobber.splash master @s ~ ~ ~

gamemode survival @s
team leave @s

advancement revoke @s only daegl:events/enter_ferry_at_daegl