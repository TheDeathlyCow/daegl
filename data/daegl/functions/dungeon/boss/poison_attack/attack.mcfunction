# asat server

schedule clear daegl:dungeon/boss/poison_attack/warn

execute as @e[tag=daegl.boss_explosion_marker,sort=random,limit=8] at @s run function daegl:dungeon/boss/poison_attack/attack_as_marker

data modify storage daegl:dialogue to_speak.boss set from storage daegl:dialogue boss_attacks.poison.attack.en_us
function daegl:dialogue/speak/play_message/boss

function daegl:dungeon/boss/start_next_attack