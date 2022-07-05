# asat server

schedule clear daegl:dungeon/boss/explosion_attack/warn_tick

tag @e[tag=daegl.boss_explosion_marker] add unexploded
function daegl:dungeon/boss/explosion_attack/next_explosion

data modify storage daegl:dialogue to_speak.boss set from storage daegl:dialogue boss_attacks.explosion.attack.en_us
function daegl:dialogue/speak/play_message/boss
