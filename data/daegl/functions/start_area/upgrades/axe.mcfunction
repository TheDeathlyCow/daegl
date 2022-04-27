# as player who purchased upgrade, at self
scoreboard players add @s daegl.upgrades.axe 0
execute store result score daegl.start_area.upgrades.axe#should_return daegl.temp run scoreboard players get @s daegl.upgrades.axe
execute if score daegl.start_area.upgrades.axe#should_return daegl.temp = #true daegl.constants run function daegl:start_area/upgrades/return/axe
execute if score daegl.start_area.upgrades.axe#should_return daegl.temp = #false daegl.constants run function daegl:start_area/upgrades/buy/axe

advancement grant @s only daegl:dungeon_levels/upgrades/buy_miners_axe
advancement revoke @s only daegl:events/upgrades/buy_miners_axe

scoreboard players reset daegl.start_area.upgrades.axe#should_return daegl.temp