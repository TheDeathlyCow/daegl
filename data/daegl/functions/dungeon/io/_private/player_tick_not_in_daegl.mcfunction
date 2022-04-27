# as players not in daegl, at self

clear @s #daegl:dungeon_item{DaeglItem:1b}
# temp coords
execute in minecraft:overworld positioned -237 101 -262 align xyz if entity @s[dx=4,dy=4,dz=0] at @s run function daegl:dungeon/io/attempt_enter