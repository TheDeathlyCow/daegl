# asat server

schedule clear daegl:dungeon/boss/explosion_attack/warn

execute at @e[tag=daegl.boss_summon_marker] if predicate daegl:should_summon_ghast run summon minecraft:ghast ~ ~10 ~ {Tags:["daegl_mob"],DeathLootTable:"daegl:entities/greater_enemy"}

tag @e[tag=daegl.boss_explosion_marker] add unexploded
function daegl:dungeon/boss/explosion_attack/next_explosion

data modify storage daegl:dialogue to_speak.boss set from storage daegl:dialogue boss_attacks.explosion.attack.en_us
function daegl:dialogue/speak/play_message/boss

execute in tns8wg:dungeon_dim positioned 5794 -27 -4166 run fill ~ ~ ~ ~41 ~ ~47 minecraft:reinforced_deepslate replace #daegl:boss_spawner_replaceable




