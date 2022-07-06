# asat server

schedule clear daegl:dungeon/boss/fire_attack/warn

execute as @a[tag=in_daegl] at @s run function daegl:dungeon/boss/fire_attack/attack_player
data modify storage daegl:dialogue to_speak.boss set from storage daegl:dialogue boss_attacks.fire.attack.en_us
function daegl:dialogue/speak/play_message/boss

function daegl:dungeon/boss/start_next_attack

