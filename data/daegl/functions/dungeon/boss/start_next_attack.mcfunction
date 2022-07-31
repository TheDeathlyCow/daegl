# asat server

function tnsrandom:next_int

scoreboard players operation next_boss_stage daegl.boss_attack = current tnsrandom
scoreboard players operation next_boss_stage daegl.boss_attack %= num_attacks daegl.boss_attack

execute if score next_boss_stage daegl.boss_attack = FIRE daegl.boss_attack run schedule function daegl:dungeon/boss/fire_attack/start 10s
execute if score next_boss_stage daegl.boss_attack = EXPLOSION daegl.boss_attack run schedule function daegl:dungeon/boss/explosion_attack/start 10s
execute if score next_boss_stage daegl.boss_attack = POISON daegl.boss_attack run schedule function daegl:dungeon/boss/poison_attack/start 10s
execute if score next_boss_stage daegl.boss_attack = ENDER daegl.boss_attack run schedule function daegl:dungeon/boss/ender_attack/start 10s


execute unless score current daegl.game_stage = CRYSTAL daegl.game_stage run function daegl:dungeon/boss/clear_attack_schedule