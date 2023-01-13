# as any, at the smelter input container
# smelts the item in the 0th slot then moves it into output

# smelts item
item modify block ~ ~ ~ container.0 daegl:smelt

# add to output buffer
data modify storage daegl:smelter to_output append from block ~ ~ ~ Items[{Slot:0b}]
item replace block ~ ~ ~ container.0 with air

schedule function daegl:dungeon/smelter/output_item 5s append

