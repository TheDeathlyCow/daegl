# as players in daegl, at self

execute if score @s daegl.logout_count matches 1.. run function daegl:dungeon/io/exit

# temp coords
execute in minecraft:overworld positioned 6004 76 -4145 align xyz if entity @s[dx=0,dy=12,dz=11] at @s run function daegl:dungeon/io/exit
