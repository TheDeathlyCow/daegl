# as player who purchased upgrade, at self
scoreboard players add @s daegl.overgrowth.pass_upgrade 0
execute store result score has_already_purchased_pass daegl.temp run scoreboard players get @s daegl.overgrowth.pass_upgrade
execute if score has_already_purchased_pass daegl.temp = #true daegl.constants run function daegl.overgrowth:pass/return_pass
execute if score has_already_purchased_pass daegl.temp = #false daegl.constants run function daegl.overgrowth:pass/purchase_pass

advancement grant @s only daegl.overgrowth:display/buy_overgrowth_pass
advancement revoke @s only daegl.overgrowth:events/buy_overgrowth_pass

scoreboard players reset has_already_purchased_pass daegl.temp