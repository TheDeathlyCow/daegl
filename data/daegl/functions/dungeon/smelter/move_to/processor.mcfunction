# as any, at the block to move FROM
# Moves an item stack from the 0th slot of a container to the 0th slot of the processor container

item replace block 5914 72 -4127 container.0 from block ~ ~ ~ container.0 
item replace block ~ ~ ~ container.0 with minecraft:air

execute positioned 5914 72 -4127 run function daegl:dungeon/smelter/processor/add