# as players not in daegl, at self

clear @s #daegl:dungeon_item{DaeglItem:1b}
# temp coords
execute in minecraft:overworld positioned 6005 76 -4145 align xyz if entity @s[dx=0,dy=12,dz=11] at @s run function daegl:dungeon/io/attempt_enter