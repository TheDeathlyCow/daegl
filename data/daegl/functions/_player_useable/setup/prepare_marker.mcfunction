# as player at self

setblock ~ ~-1 ~ structure_block[mode=save]
data modify block ~ ~-1 ~ name set value "daegl:reset/"
execute align xyz positioned ~0.5 ~0.5 ~0.5 run kill @e[distance=..2,type=marker,tag=daegl_reset_marker]
execute align xyz run summon marker ~ ~ ~ {Tags:["daegl_reset_marker"]}

tellraw @s [{"text": "Successfully summoned a daegl reset marker!"}]
tellraw @s [{"text": "Click "},{"text": "here","underlined": true, "color": "green", "clickEvent": {"action": "suggest_command","value": "/data modify entity @e[distance=..1,type=marker,tag=daegl_reset_marker,sort=nearest,limit=1] data.structure set value "}}, " to enter this marker's structure name!"]