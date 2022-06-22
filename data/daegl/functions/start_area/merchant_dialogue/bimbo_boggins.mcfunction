# as player being spoken to, at self

function tnsrandom:next_int

scoreboard players operation $selected_dialogue daegl.temp = current tnsrandom
scoreboard players operation $selected_dialogue daegl.temp %= BIMBO_BOGGINS_DIAGLOGUE_COUNT daegl.constants

execute if score $selected_dialogue daegl.temp matches 0 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] Only the finest here at Bimbo Boggins's!"}]
execute if score $selected_dialogue daegl.temp matches 1 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] Everything's for sale my friend. Everything! If I had a sister, I'd sell her in a second!"}]
execute if score $selected_dialogue daegl.temp matches 2 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] Me and you are the only sane ones."}]
execute if score $selected_dialogue daegl.temp matches 3 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] I know what you're thinking. \"This Boggins, how could he part with such magnificent treasures?\""}]
execute if score $selected_dialogue daegl.temp matches 4 run tellraw @s [{"text": "[","color": "yellow"},{"text": "Bimbo Boggins","color": "gold"}, {"text": "] Now stocking Warden Repellent!"}]


scoreboard players reset $selected_dialogue daegl.temp

function daegl:start_area/merchant_dialogue/restart_merchant_cooldown