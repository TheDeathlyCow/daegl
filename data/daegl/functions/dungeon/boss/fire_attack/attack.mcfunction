# asat server

schedule clear daegl:dungeon/boss/fire_attack/warn

execute at @a[tag=in_daegl,predicate=daegl:has_fire_resistance] run particle flame ~ ~1 ~ 0.5 1 0.5 1.0 100
effect clear @a[tag=in_daegl] fire_resistance
execute as @e[tag=daegl.boss_explosion_marker] at @s run function daegl:dungeon/boss/fire_attack/attack_as_marker
data modify storage daegl:dialogue to_speak.boss set from storage daegl:dialogue boss_attacks.fire.attack.en_us
function daegl:dialogue/speak/play_message/boss

function daegl:dungeon/boss/start_next_attack

