scoreboard objectives add tnsrandom dummy 
scoreboard players set modulus tnsrandom 2303
scoreboard players set multiplier tnsrandom 1646
scoreboard players set adder tnsrandom 100
execute if score current tnsrandom matches 0 run scoreboard players set current tnsrandom 3