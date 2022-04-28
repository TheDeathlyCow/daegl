# asat arbitrary
function daegl:dungeon/levels/clear_tickers

schedule function daegl:dungeon/levels/3/prep/ticker 1t replace

scoreboard players operation current daegl.game_stage = PREPARE_GOLD daegl.game_stage

bossbar remove daegl:resource_bossbar
execute at @e[type=marker,tag=daegl_gold_lever,limit=1] run setblock ~ ~ ~ lever[face=floor,powered=false]
execute at @e[type=marker,tag=daegl_gold_lever,limit=1] run summon firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16766720]}]}}}}

schedule function daegl:dialogue/speak/complete/iron 5s
