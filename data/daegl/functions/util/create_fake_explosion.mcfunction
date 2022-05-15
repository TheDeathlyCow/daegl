# as server, at place to create fake explosion

#fill ~-5 ~-5 ~-5 ~5 ~5 ~5 minecraft:air replace minecraft:gravel
playsound entity.tnt.primed block @a ~ ~ ~ 6
summon marker ~ ~ ~ {Tags:["daegl.explosion_marker.1"]}
summon marker ~3 ~ ~1 {Tags:["daegl.explosion_marker.2"]}
summon marker ~1 ~1 ~ {Tags:["daegl.explosion_marker.3"]}
summon marker ~-2 ~ ~1 {Tags:["daegl.explosion_marker.4"]}
summon marker ~2 ~2 ~2 {Tags:["daegl.explosion_marker.5"]}
summon marker ~ ~1 ~-3 {Tags:["daegl.explosion_marker.5"]}

schedule function daegl:util/explosion/1 80t
schedule function daegl:util/explosion/2 90t
schedule function daegl:util/explosion/3 97t
schedule function daegl:util/explosion/4 105t
schedule function daegl:util/explosion/5 111t
schedule function daegl:util/explosion/6 118t