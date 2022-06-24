# asat server
# param: storage = daegl:dialogue to_speak.merchant (array of JSON text elements)
# Broadcasts the next message in to speak buffer to all players in daegl, as the 
# ancient master


tellraw @a[tag=in_daegl] [{"nbt":"style.merchant", "storage": "daegl:dialogue", "interpret": true},{"nbt":"name.merchant", "storage": "daegl:dialogue", "interpret": true},{"nbt":"to_speak.merchant[-1]", "storage": "daegl:dialogue"}]

execute as @a[tag=in_daegl] at @s run playsound minecraft:entity.villager.ambient neutral @s ~ ~ ~ 1 1.0

data remove storage daegl:dialogue to_speak.merchant[-1]
execute if data storage daegl:dialogue to_speak.merchant[-1] run schedule function daegl:dialogue/speak/play_message/merchant 5s replace

