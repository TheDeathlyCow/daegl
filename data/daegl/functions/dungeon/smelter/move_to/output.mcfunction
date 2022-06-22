# as any, at the block to move FROM
# Moves an item stack from the 0th slot of a container to the 0th slot of the output container
item replace block 5925 60 -4134 container.0 from block ~ ~ ~ container.0
item replace block ~ ~ ~ container.0 with minecraft:air

execute positioned 5925 60 -4134 run function daegl:dungeon/smelter/output/add