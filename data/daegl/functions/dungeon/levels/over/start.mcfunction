# asat server

function daegl:dungeon/levels/clear_tickers

scoreboard players operation current daegl.game_stage = GAME_OVER daegl.game_stage

tellraw @a[tag=debug] "Boss Beaten!"

function daegl:dungeon/io/exit