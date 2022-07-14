# as player ready to teleport to dungeon, at self

execute in tns8wg:dungeon_dim run teleport @s 6045 66 -4120 -45 0

tellraw @a [{"text": "", "color": "gold"},{"selector": "@s", "color": "red", "bold": true}, {"text": " has taken the ferry to Daegl!"}]
tellraw @s [{"text": "Welcome to Daegl!", "color": "gold"}]

execute at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1

advancement revoke @s only daegl:events/enter_ferry_at_spawn

gamemode adventure @s

team join daegl.players @s