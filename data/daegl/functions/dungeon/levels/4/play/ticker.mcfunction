# as server, at world spawn

schedule function daegl:dungeon/levels/3/play/ticker 2t

execute store result bossbar daegl:resource_bossbar value run scoreboard players get resource_count daegl.game_variables

#execute if score resource_count daegl.game_variables >= GOLD_AMOUNT daegl.constants run function daegl:dungeon/levels/2/prep/start