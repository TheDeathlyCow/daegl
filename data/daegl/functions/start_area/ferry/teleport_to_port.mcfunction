# as player ready to teleport to dungeon, at self

effect clear @s
effect give @s instant_health 1 255
effect give @s saturation 1 255
teleport @s -263 104 -256

tellraw @a [{"text": "", "color": "gold"},{"selector": "@s", "color": "red", "bold": true}, {"text": " has taken the ferry to Daegl!"}]
tellraw @s [{"text": "Welcome to Daegl!", "color": "gold"}]

execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1

advancement revoke @s only daegl:events/enter_ferry_at_spawn