
data modify storage daegl:smelter being_smelted set from storage daegl:smelter process_buffer[0]

execute if data storage daegl:smelter being_smelted[{tag:{DaeglResource:0b}}] run data merge storage daegl:smelter {id:"minecraft:copper_ingot"}
execute if data storage daegl:smelter being_smelted[{tag:{DaeglResource:1b}}] run data merge storage daegl:smelter {id:"minecraft:iron_ingot"}
execute if data storage daegl:smelter being_smelted[{tag:{DaeglResource:2b}}] run data merge storage daegl:smelter {id:"minecraft:gold_ingot"}

#data remove storage daegl:smelter being_smelted.tag

data modify storage daegl:smelter output_buffer append from storage daegl:smelter being_smelted

