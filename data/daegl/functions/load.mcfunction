# as server, at worldspawn

scoreboard objectives add daegl.constants dummy
scoreboard objectives add daegl.game_stage dummy
scoreboard objectives add daegl.temp dummy
scoreboard objectives add daegl.merchant_dialogue_cooldown dummy
scoreboard objectives add daegl.logout_count minecraft.custom:minecraft.leave_game
scoreboard objectives add daegl.levels_completed dummy
scoreboard objectives add daegl.game_variables dummy

scoreboard players set BIMBO_BOGGINS_DIAGLOGUE_COUNT daegl.constants 2
scoreboard players set FIDELAN_MERCHANT_DIAGLOGUE_COUNT daegl.constants 3
scoreboard players set MINERS_BREWER_DIAGLOGUE_COUNT daegl.constants 2
scoreboard players set MERCHANT_DIALOGUE_COOLDOWN daegl.constants 300

scoreboard players set INACTIVE daegl.game_stage 0
scoreboard players set PREPARE_COPPER daegl.game_stage 1
scoreboard players set COPPER daegl.game_stage 2


kill @e[tag=daegl_inventory_marker]
summon armor_stand ~ ~ ~ {Tags:["daegl_inventory_marker"],Marker:1b,Invisible:1b}

schedule function daegl:tick 1t replace
