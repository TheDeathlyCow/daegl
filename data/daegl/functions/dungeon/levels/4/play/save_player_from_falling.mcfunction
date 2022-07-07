# as player to be saved, at respawn point

teleport @s ~ ~ ~

gamerule showDeathMessages false
kill @s
tellraw @a [{"selector":"@s"}, {"text": " was impaled on a giant crystal"}]
gamerule showDeathMessages true

