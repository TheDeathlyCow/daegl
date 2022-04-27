# as player who purchased efficiency, at self

scoreboard players add @s daegl.upgrades.efficiency 1

tellraw @s [{"text": "You have purchased the ", "color": "red"},{"text": "Efficiency (+1)", "color": "gold"}, " upgrade!"]

data modify storage daegl:text upgrade.roman_numeral set value "?"
execute if score @s daegl.upgrades.efficiency matches 1 run data modify storage daegl:text upgrade.roman_numeral set value "I"
execute if score @s daegl.upgrades.efficiency matches 2 run data modify storage daegl:text upgrade.roman_numeral set value "II"
execute if score @s daegl.upgrades.efficiency matches 3 run data modify storage daegl:text upgrade.roman_numeral set value "III"
execute if score @s daegl.upgrades.efficiency matches 4 run data modify storage daegl:text upgrade.roman_numeral set value "IV"
execute if score @s daegl.upgrades.efficiency matches 5 run data modify storage daegl:text upgrade.roman_numeral set value "V"
execute if score @s daegl.upgrades.efficiency matches 6 run data modify storage daegl:text upgrade.roman_numeral set value "VI"
execute if score @s daegl.upgrades.efficiency matches 7 run data modify storage daegl:text upgrade.roman_numeral set value "VII"
execute if score @s daegl.upgrades.efficiency matches 8 run data modify storage daegl:text upgrade.roman_numeral set value "VIII"
execute if score @s daegl.upgrades.efficiency matches 9 run data modify storage daegl:text upgrade.roman_numeral set value "IX"
execute if score @s daegl.upgrades.efficiency matches 10 run data modify storage daegl:text upgrade.roman_numeral set value "X"

tellraw @s [{"text": "Your Miner's Pickaxe will now have ", "color": "red"},{"text": "Efficiency ", "color": "gold", "bold": true}, {"nbt": "upgrade.roman_numeral", "storage": "daegl:text", "color": "gold", "bold": true}, " when you enter the Mines of Daegl."]

playsound block.note_block.bell master @s ~ ~ ~ 1 1.3
