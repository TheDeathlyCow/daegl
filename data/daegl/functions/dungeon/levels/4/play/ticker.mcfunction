# as server, at world spawn
execute if score current daegl.game_stage = CRYSTAL daegl.game_stage run schedule function daegl:dungeon/levels/4/play/ticker 1t

scoreboard players set boss_health daegl.game_variables 0
execute as @e[tag=daegl_boss,limit=1] at @s run function daegl:dungeon/levels/4/play/tick_as_boss 

#execute as @e[tag=daegl.boss_rider] at @s if entity @s[nbt={OnGround:1b}] run function daegl:dungeon/levels/over/start

execute if score current daegl.game_stage = CRYSTAL daegl.game_stage if score boss_health daegl.game_variables <= #0 daegl.constants if entity @e[type=marker,tag=final_boss_marker] run function daegl:dungeon/levels/over/start

execute as @a[tag=in_daegl,predicate=daegl:fell_out_of_bossfight] at @s positioned 5854 -20 -4146 run function daegl:dungeon/levels/4/play/save_player_from_falling