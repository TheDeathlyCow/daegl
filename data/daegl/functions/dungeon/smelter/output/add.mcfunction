# as any, at smelter output container

data modify storage daegl:smelter to_output set from block ~ ~ ~ Items[{Slot:0b}]
item replace block ~ ~ ~ container.0 with air
function daegl:dungeon/smelter/output/pop