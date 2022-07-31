# as each player in daegl, at self

execute if score @s daegl.logout_count matches 1.. run function daegl:dungeon/io/exit

execute positioned 5986 76 -4145 in tns8wg:dungeon_dim align xyz if entity @s[dx=0,dy=12,dz=11,predicate=daegl:in_daegl_dim] at @s run function daegl:dungeon/io/exit
