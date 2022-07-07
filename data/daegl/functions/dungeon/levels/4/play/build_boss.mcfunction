# as boss, at self

function daegl:dungeon/levels/4/play/create_bossbar

teleport @s ~ ~ ~ -90 0

playsound entity.wither.spawn master @a[tag=in_daegl] ~ ~ ~

team add daegl.boss_team [{"text": "Heart of the Mountain", "color": "dark_purple"}]
team modify daegl.boss_team color dark_blue
team modify daegl.boss_team collisionRule never

team join daegl.boss_team @s
