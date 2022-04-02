# as all players, at self

execute if entity @s[tag=in_daegl] run function daegl:dungeon/io/_private/player_tick_checked

# temp coords
execute in minecraft:overworld positioned -237 101 -262 align xyz as @a[dx=4,dy=4,dz=0,tag=!in_daegl] at @s run function daegl:dungeon/io/enter