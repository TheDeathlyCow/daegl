# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/2/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_IRON daegl.game_stage

bossbar remove daegl:resource_bossbar
execute at @e[type=marker,tag=daegl_iron_lever,limit=1] run setblock ~ ~ ~ lever[face=floor,powered=false]
execute at @e[type=marker,tag=daegl_iron_lever,limit=1] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;12632256]}]}}}}

scoreboard players add LEVELS_COMPLETED daegl.levels_completed 1