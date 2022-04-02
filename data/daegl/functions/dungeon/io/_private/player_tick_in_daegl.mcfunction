# as players in daegl, at self

execute if score @s daegl_logout_count matches 1.. run function daegl:dungeon/io/exit

# temp coords
execute in minecraft:overworld positioned -237 101 -267 align xyz if entity @s[dx=4,dy=4,dz=0] at @s run function daegl:dungeon/io/exit
