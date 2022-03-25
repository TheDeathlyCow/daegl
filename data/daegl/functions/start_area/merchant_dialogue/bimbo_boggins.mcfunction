# as player being spoken to, at self

function tnsrandom:next_int

scoreboard players operation $selected_dialogue daegl_temp = current tnsrandom
scoreboard players operation $selected_dialogue daegl_temp %= BIMBO_BOGGINS_DIAGLOGUE_COUNT daegl_constants

execute if score $selected_dialogue daegl_temp matches 0 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] Only the finest here at Bimbo Boggins's!"}]
execute if score $selected_dialogue daegl_temp matches 1 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] Everything's for sale my friend. Everything! If I had a sister, I'd sell her in a second!"}]

scoreboard players reset $selected_dialogue daegl_temp

function daegl:start_area/merchant_dialogue/restart_merchant_cooldown