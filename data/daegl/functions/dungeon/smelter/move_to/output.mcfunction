# as any, at the block to move FROM
# Moves an item stack from the 0th slot of a container to the 0th slot of the output container
item replace block 5927 60 -4132 container.0 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with minecraft:air

execute positioned 5927 60 -4132 run function daegl:dungeon/smelter/output/add