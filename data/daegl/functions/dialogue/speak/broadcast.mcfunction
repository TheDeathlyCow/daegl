# asat server
# param: storage = daegl:dialogue to_speak
# Broadcasts the message in to_speak storage to all players in daegl, as the 
# master of the mines

tellraw @a[tag=in_daegl] [{"nbt":"base_style", "storage": "daegl:dialogue", "interpret": true},{"nbt":"name", "storage": "daegl:dialogue", "interpret": true},{"nbt":"to_speak", "storage": "daegl:dialogue"}]
data remove storage daegl:dialogue to_speak

execute as @a[tag=in_daegl] at @s run playsound minecraft:entity.villager.ambient neutral @s ~ ~ ~ 1 0.5
