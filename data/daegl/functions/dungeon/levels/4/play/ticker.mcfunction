# as server, at world spawn

schedule function daegl:dungeon/levels/4/play/ticker 2t

scoreboard players set boss_health daegl.game_variables 0
execute store result score boss_health daegl.game_variables run data get entity @e[tag=daegl_boss,limit=1] Health
execute store result bossbar daegl:final_bossbar value run scoreboard players get boss_health daegl.game_variables


execute as @e[tag=daegl.boss_rider] at @s if entity @s[nbt={OnGround:1b}] run function daegl:dungeon/levels/over/start


#execute if score boss_health daegl.game_variables <= #0 daegl.constants if entity @e[type=marker,tag=final_boss_marker] run function daegl:dungeon/levels/over/start