# as boss, at self
bossbar remove daegl:final_bossbar
bossbar add daegl:final_bossbar [{"text": "Heart of the Mountain"}]
execute store result bossbar daegl:final_bossbar max run attribute @s minecraft:generic.max_health get
bossbar set daegl:final_bossbar value 0
bossbar set daegl:final_bossbar players @a[tag=in_daegl]
bossbar set daegl:final_bossbar visible true
bossbar set daegl:final_bossbar style notched_10
bossbar set daegl:resource_bossbar color red