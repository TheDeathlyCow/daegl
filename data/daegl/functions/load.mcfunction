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
scoreboard objectives add daegl.game_variables dummy
scoreboard objectives add daegl.xp_backup dummy
scoreboard objectives add daegl.in_dungeon dummy

# upgrade scores
scoreboard objectives add daegl.upgrades.fortune dummy
scoreboard objectives add daegl.upgrades.efficiency dummy
scoreboard objectives add daegl.upgrades.pickaxe_tier dummy
scoreboard objectives add daegl.upgrades.axe dummy
# tiers: 0 = iron, 1 = diamond

# scores for advancments
scoreboard objectives add daegl.break_oak_planks minecraft.mined:oak_planks
scoreboard objectives add daegl.break_oak_stairs minecraft.mined:oak_stairs
scoreboard objectives add daegl.break_oak_slab minecraft.mined:oak_slab

# time player last finished dungeon
scoreboard objectives add daegl.time_finished dummy
# track how many runs each player has completed 
scoreboard objectives add daegl.runs dummy

# reset all constant scoreboard players - help enforce constantness
scoreboard players reset * daegl.constants

# constants for merchants
scoreboard players set BIMBO_BOGGINS_DIAGLOGUE_COUNT daegl.constants 5
scoreboard players set FIDELAN_MERCHANT_DIAGLOGUE_COUNT daegl.constants 5
scoreboard players set UPGRADE_DIAGLOGUE_COUNT daegl.constants 4
scoreboard players set MERCHANT_DIALOGUE_COOLDOWN daegl.constants 300

# resource bar constants
scoreboard players set COPPER_AMOUNT daegl.constants 100
scoreboard players set IRON_AMOUNT daegl.constants 100
scoreboard players set GOLD_AMOUNT daegl.constants 100

# upgrades constants
scoreboard players set MAX_FORTUNE_LEVEL daegl.constants 3
scoreboard players set MAX_EFFICIENCY_LEVEL daegl.constants 5

# literal constants - makes it easier to read comparisons
scoreboard players set #false daegl.constants 0
scoreboard players set #true daegl.constants 1
scoreboard players set #0 daegl.constants 0
scoreboard players set #1 daegl.constants 1
scoreboard players set #20 daegl.constants 20
scoreboard players set #MIN_VALUE daegl.constants -2147483648
scoreboard players set #MAX_VALUE daegl.constants 2147483647


# io constants
scoreboard players set ENTER_DUNGEON_WINDOW daegl.constants 600
scoreboard players set MAX_PLAYERS daegl.constants 5
# for production - 12 hours between runs
scoreboard players set MIN_TIME_BETWEEN_RUNS daegl.constants 864000
# for testing - 30 seconds between runs
scoreboard players set MIN_TIME_BETWEEN_RUNS daegl.constants 600


# game stages
scoreboard players set INACTIVE daegl.game_stage 0
scoreboard players set PREPARE_COPPER daegl.game_stage 1
scoreboard players set COPPER daegl.game_stage 2
scoreboard players set PREPARE_IRON daegl.game_stage 3
scoreboard players set IRON daegl.game_stage 4
scoreboard players set PREPARE_GOLD daegl.game_stage 5
scoreboard players set GOLD daegl.game_stage 6
scoreboard players set PREPARE_CRYSTAL daegl.game_stage 7
scoreboard players set CRYSTAL daegl.game_stage 8
scoreboard players set GAME_OVER daegl.game_stage 9
# initialize current game stage to 0
scoreboard players add current daegl.game_stage 0

kill @e[tag=daegl_inventory_marker]
summon armor_stand ~ ~ ~ {Tags:["daegl_inventory_marker"],Marker:1b,Invisible:1b}

schedule function daegl:tick 1t replace
