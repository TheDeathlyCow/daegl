# asat player who killed boss

function daegl:dungeon/levels/clear_tickers
function daegl:dungeon/boss/clear_attack_schedule

scoreboard players operation current daegl.game_stage = GAME_OVER daegl.game_stage

tellraw @a[tag=debug] "Boss Beaten!"

particle minecraft:poof ~ ~ ~ 10 10 10 1.0 5000
playsound minecraft:entity.zombie_villager.ambient master @s ~ ~ ~ 1 0.3

function daegl:dialogue/speak/complete/crystal
schedule function daegl:dungeon/levels/over/heal_boss 5s

#advancement revoke @s only daegl:events/kill_boss

bossbar remove daegl:final_bossbar

kill @e[tag=daegl.boss_rider]