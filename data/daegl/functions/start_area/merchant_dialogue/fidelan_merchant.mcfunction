# as player being spoken to, at self

function tnsrandom:next_int

scoreboard players operation $selected_dialogue daegl_temp = current tnsrandom
scoreboard players operation $selected_dialogue daegl_temp %= FIDELAN_MERCHANT_DIAGLOGUE_COUNT daegl_constants


execute if score $selected_dialogue daegl_temp matches 0 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Fidelan Merchant","color": "gold"}, {"text": "] Quality goods for quality people!"}]
execute if score $selected_dialogue daegl_temp matches 1 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Fidelan Merchant","color": "gold"}, {"text": "] You're not here to steal anything, are you?"}]
execute if score $selected_dialogue daegl_temp matches 2 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Fidelan Merchant","color": "gold"}, {"text": "] Better safe than sorry! Restock your potions here!"}]

scoreboard players reset $selected_dialogue daegl_temp

function daegl:start_area/merchant_dialogue/restart_merchant_cooldown