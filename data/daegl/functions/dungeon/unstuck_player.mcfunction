# asat player who is stuck
# teleports the player back to their spawn point 
scoreboard players reset @s iamstuck
scoreboard players enable @s iamstuck
teleport @s 5925 65 -4127

advancement revoke @s only daegl:events/triggered_stuck