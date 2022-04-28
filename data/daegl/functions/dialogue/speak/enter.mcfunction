# as at server

data modify storage daegl:dialogue to_speak set from storage daegl:dialogue enter.en_us[-1]
data remove storage daegl:dialogue enter.en_us[-1]
execute if data storage daegl:dialogue enter.en_us[-1] run schedule function daegl:dialogue/speak/enter 5s

tellraw @a[tag=in_daegl] [{"nbt":"base_style", "storage": "daegl:dialogue", "interpret": true},{"nbt":"name", "storage": "daegl:dialogue", "interpret": true},{"nbt":"to_speak", "storage": "daegl:dialogue"}]

data remove storage daegl:dialogue to_speak