scoreboard objectives remove use_light
scoreboard objectives add use_light minecraft.used:minecraft.light
#scoreboard objectives remove light_block
scoreboard objectives add light_block dummy
scoreboard players add dummy light_block 0

tellraw @a {"text": "Bottle O' Light has successfully loaded", "color": "aqua"}