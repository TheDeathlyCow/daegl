# as player who purchased upgrade, at self
scoreboard players add @s daegl.upgrades.efficiency 0

execute store result score daegl.start_area.upgrades.efficiency#level daegl.temp run scoreboard players get @s daegl.upgrades.efficiency
execute if score daegl.start_area.upgrades.efficiency#level daegl.temp >= MAX_EFFICIENCY_LEVEL daegl.constants run function daegl:start_area/upgrades/return/efficiency
execute if score daegl.start_area.upgrades.efficiency#level daegl.temp < MAX_EFFICIENCY_LEVEL daegl.constants run function daegl:start_area/upgrades/buy/efficiency

advancement grant @s only daegl:dungeon_levels/upgrades/efficiency/1
execute if score @s daegl.upgrades.efficiency = MAX_EFFICIENCY_LEVEL daegl.constants run advancement grant @s only daegl:dungeon_levels/upgrades/efficiency/max
advancement revoke @s only daegl:events/upgrades/buy_efficiency

scoreboard players reset daegl.start_area.upgrades.efficiency#level daegl.temp