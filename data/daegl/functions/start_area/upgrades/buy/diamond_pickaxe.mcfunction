# as player who purchased axe, at self

tellraw @s [{"text": "You have purchased the ", "color": "red"},{"text": "Diamond Pickaxe", "color": "gold"}, " upgrade!"]

playsound block.note_block.bell master @s ~ ~ ~ 1 1.3

scoreboard players set @s daegl.upgrades.pickaxe_tier 1