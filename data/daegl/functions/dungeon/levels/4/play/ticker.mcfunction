# as server, at world spawn

schedule function daegl:dungeon/levels/4/play/ticker 1t

execute as @e[tag=daegl_boss,limit=1] at @s run function daegl:dungeon/levels/4/play/tick_as_boss 

#execute as @e[tag=daegl.boss_rider] at @s if entity @s[nbt={OnGround:1b}] run function daegl:dungeon/levels/over/start

execute if score boss_health daegl.game_variables <= #0 daegl.constants if entity @e[type=marker,tag=final_boss_marker] run function daegl:dungeon/levels/over/start


