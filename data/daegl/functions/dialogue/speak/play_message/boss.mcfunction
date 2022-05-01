# asat server
# param: storage = daegl:dialogue to_speak.boss (array of JSON text elements)
# Broadcasts the next message in to speak buffer to all players in daegl, as the 
# final boss


tellraw @a[tag=in_daegl] [{"nbt":"style.boss", "storage": "daegl:dialogue", "interpret": true},{"nbt":"name.boss", "storage": "daegl:dialogue", "interpret": true},{"nbt":"to_speak.boss[-1]", "storage": "daegl:dialogue"}]

execute as @a[tag=in_daegl] at @s run playsound minecraft:entity.zombie_villager.ambient neutral @s ~ ~ ~ 1 0.5

data remove storage daegl:dialogue to_speak.boss[-1]
execute if data storage daegl:dialogue to_speak.boss[-1] run schedule function daegl:dialogue/speak/play_message/boss 5s replace

