# as player who purchased pass, at self

tellraw @s [{"text": "You have purchased the ", "color": "green"},{"text": "Mines of Daegl: Overgrowth", "color": "light_green", "bold": true}, " pass!"]

playsound block.note_block.bell master @s ~ ~ ~ 1 1.3

scoreboard players set @s daegl.overgrowth.pass_upgrade 1