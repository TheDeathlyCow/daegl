# asat server
# param: storage = daegl:dialogue to_speak.lord (array of JSON text elements)
# Broadcasts the next message in to speak buffer to all players in daegl, as the 
# master of the mines


tellraw @a[tag=in_daegl] [{"nbt":"style.lord", "storage": "daegl:dialogue", "interpret": true},{"nbt":"name.lord", "storage": "daegl:dialogue", "interpret": true},{"nbt":"to_speak.lord[-1]", "storage": "daegl:dialogue"}]

execute as @a[tag=in_daegl] at @s run playsound minecraft:entity.villager.ambient neutral @s ~ ~ ~ 1 0.5

data remove storage daegl:dialogue to_speak.lord[-1]
execute if data storage daegl:dialogue to_speak.lord[-1] run schedule function daegl:dialogue/speak/play_message/lord 5s replace

