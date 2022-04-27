# as player who purchased upgrade, at self
scoreboard players add @s daegl.upgrades.fortune 0

execute store result score daegl.start_area.upgrades.fortune#level daegl.temp run scoreboard players get @s daegl.upgrades.fortune
execute if score daegl.start_area.upgrades.fortune#level daegl.temp >= MAX_FORTUNE_LEVEL daegl.constants run function daegl:start_area/upgrades/return/fortune
execute if score daegl.start_area.upgrades.fortune#level daegl.temp < MAX_FORTUNE_LEVEL daegl.constants run function daegl:start_area/upgrades/buy/fortune

advancement grant @s only daegl:dungeon_levels/upgrades/fortune/1
execute if score @s daegl.upgrades.fortune = MAX_FORTUNE_LEVEL daegl.constants run advancement grant @s only daegl:dungeon_levels/upgrades/fortune/max
advancement revoke @s only daegl:events/upgrades/buy_fortune

scoreboard players reset daegl.start_area.upgrades.fortune#level daegl.temp