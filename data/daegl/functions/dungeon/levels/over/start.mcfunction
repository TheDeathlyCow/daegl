# asat player who killed boss

function daegl:dungeon/levels/clear_tickers


scoreboard players operation current daegl.game_stage = GAME_OVER daegl.game_stage

teleport @e[tag=daegl_mob,distance=..200] ~ ~-500 ~
function daegl:dungeon/reset/place_boss_levels
tellraw @a[tag=debug] "Boss Beaten!"

particle minecraft:poof ~ ~ ~ 10 10 10 1.0 5000
playsound minecraft:entity.zombie_villager.ambient master @s ~ ~ ~ 1 0.3

function daegl:dialogue/speak/complete/crystal
schedule function daegl:dungeon/levels/over/heal_boss 5s

#advancement revoke @s only daegl:events/kill_boss

bossbar remove daegl:final_bossbar

kill @e[tag=daegl.boss_rider]

advancement grant @a[tag=in_daegl] only daegl:dungeon_levels/complete_crystal_caverns