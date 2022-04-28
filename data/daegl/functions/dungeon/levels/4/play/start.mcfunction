# asat arbitrary
function daegl:dungeon/levels/clear_tickers
schedule function daegl:dungeon/levels/4/play/ticker 1t replace

tellraw @a[tag=debug] [{"text": "Start Crystal Caves"}]
scoreboard players operation current daegl.game_stage = CRYSTAL daegl.game_stage

scoreboard players reset resource_count daegl.game_variables

execute at @e[type=marker,tag=final_boss_marker] run summon minecraft:giant ~ ~ ~ {PersistenceRequired:1b,Tags:["daegl_boss"]}

execute as @e[tag=daegl_boss,limit=1] at @s run function daegl:dungeon/levels/4/play/build_boss