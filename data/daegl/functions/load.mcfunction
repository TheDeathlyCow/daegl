# as server, at worldspawn

scoreboard objectives add daegl_constants dummy
scoreboard objectives add daegl_temp dummy
scoreboard objectives add daegl_merchant_dialogue_cooldown dummy
scoreboard objectives add daegl_logout_count minecraft.custom:minecraft.leave_game
scoreboard objectives add daegl_levels_completed dummy

scoreboard players set BIMBO_BOGGINS_DIAGLOGUE_COUNT daegl_constants 2
scoreboard players set FIDELAN_MERCHANT_DIAGLOGUE_COUNT daegl_constants 3
scoreboard players set MINERS_BREWER_DIAGLOGUE_COUNT daegl_constants 2
scoreboard players set MERCHANT_DIALOGUE_COOLDOWN daegl_constants 300


kill @e[tag=daegl_inventory_marker]
summon armor_stand ~ ~ ~ {Tags:["daegl_inventory_marker"],Marker:1b,Invisible:1b}

schedule function daegl:tick 1t replace
