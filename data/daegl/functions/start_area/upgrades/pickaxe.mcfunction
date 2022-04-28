# as player who purchased upgrade, at self
scoreboard players add @s daegl.upgrades.axe 0
execute store result score daegl.start_area.upgrades.pickaxe#should_return daegl.temp run scoreboard players get @s daegl.upgrades.pickaxe_tier
execute if score daegl.start_area.upgrades.pickaxe#should_return daegl.temp = #true daegl.constants run function daegl:start_area/upgrades/return/diamond_pickaxe
execute if score daegl.start_area.upgrades.pickaxe#should_return daegl.temp = #false daegl.constants run function daegl:start_area/upgrades/buy/diamond_pickaxe

advancement grant @s only daegl:dungeon_levels/upgrades/buy_diamond_pick
advancement revoke @s only daegl:events/upgrades/buy_diamond_pick

scoreboard players reset daegl.start_area.upgrades.pickaxe#should_return daegl.temp