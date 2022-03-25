# as player being spoken to, at self

function tnsrandom:next_int

scoreboard players operation $selected_dialogue daegl_temp = current tnsrandom
scoreboard players operation $selected_dialogue daegl_temp %= MINERS_BREWER_DIAGLOGUE_COUNT daegl_constants

execute if score $selected_dialogue daegl_temp matches 0 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Master Brewer","color": "gold"}, {"text": "] Get your Miner's Brew here!"}]
execute if score $selected_dialogue daegl_temp matches 1 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Master Brewer","color": "gold"}, {"text": "] Only slightly alcoholic!"}]

scoreboard players reset $selected_dialogue daegl_temp

function daegl:start_area/merchant_dialogue/restart_merchant_cooldown

