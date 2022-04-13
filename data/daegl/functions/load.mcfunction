## as server, at worldspawn

# initialize objectives
# Constants should ONLY be modified in this function. 
scoreboard objectives add daegl.constants dummy 
scoreboard objectives add daegl.game_stage dummy
# Any function that sets a temp variable must also reset that variable before it finishes
scoreboard objectives add daegl.temp dummy
# Function params should be the dotted name of the function followed by a #, and then the param name. E.g. daegl.example.function#param1 
# The function they are a param for should always reset the variable at the end of execution, unless they are a loop index
scoreboard objectives add daegl.function_params dummy
scoreboard objectives add daegl.merchant_dialogue_cooldown dummy
scoreboard objectives add daegl.logout_count minecraft.custom:minecraft.leave_game
scoreboard objectives add daegl.levels_completed dummy
scoreboard objectives add daegl.game_variables dummy
scoreboard objectives add daegl.xp_backup dummy

# triggers - if I had any

# reset all constant scoreboard players - help enforce constantness
scoreboard players reset * daegl.constants

# constants for merchants
scoreboard players set BIMBO_BOGGINS_DIAGLOGUE_COUNT daegl.constants 2
scoreboard players set FIDELAN_MERCHANT_DIAGLOGUE_COUNT daegl.constants 3
scoreboard players set MINERS_BREWER_DIAGLOGUE_COUNT daegl.constants 2
scoreboard players set MERCHANT_DIALOGUE_COOLDOWN daegl.constants 300

# resource bar constants
scoreboard players set COPPER_AMOUNT daegl.constants 100
scoreboard players set IRON_AMOUNT daegl.constants 100
scoreboard players set GOLD_AMOUNT daegl.constants 100

# literal int constants - makes it easier to read comparisons
scoreboard players set #0 daegl.constants 0
scoreboard players set #1 daegl.constants 1

# io constants
scoreboard players set ENTER_DUNGEON_WINDOW daegl.constants 1200
scoreboard players set MAX_PLAYERS daegl.constants 5

# game stages
scoreboard players set INACTIVE daegl.game_stage 0
scoreboard players set PREPARE_COPPER daegl.game_stage 1
scoreboard players set COPPER daegl.game_stage 2
scoreboard players set PREPARE_IRON daegl.game_stage 3
scoreboard players set IRON daegl.game_stage 4
scoreboard players set PREPARE_GOLD daegl.game_stage 5
scoreboard players set GOLD daegl.game_stage 6
# initialize current game stage to 0
scoreboard players add current daegl.game_stage 0

kill @e[tag=daegl_inventory_marker]
summon armor_stand ~ ~ ~ {Tags:["daegl_inventory_marker"],Marker:1b,Invisible:1b}

schedule function daegl:tick 1t replace
