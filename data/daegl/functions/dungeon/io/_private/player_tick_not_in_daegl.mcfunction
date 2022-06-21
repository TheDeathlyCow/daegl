# as players not in daegl, at self

clear @s #daegl:dungeon_item{DaeglItem:1b}

execute positioned 6005 76 -4145 in tns8wg:dungeon_dim align xyz if entity @s[dx=0,dy=12,dz=11,predicate=daegl:in_daegl_dim,gamemode=adventure] at @s run function daegl:dungeon/io/attempt_enter