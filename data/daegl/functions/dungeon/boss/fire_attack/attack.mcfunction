# asat server

schedule clear daegl:dungeon/boss/fire_attack/warn_tick

execute as @a[tag=in_daegl] at @e[tag=daegl.boss_summon_marker] run function daegl:dungeon/boss/fire_attack/attack_as_marker

data modify storage daegl:dialogue to_speak.boss set from storage daegl:dialogue boss_attacks.fire.attack.en_us
function daegl:dialogue/speak/play_message/boss

function daegl:dungeon/boss/end_attack