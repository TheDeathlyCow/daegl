
data modify storage daegl:smelter being_smelted set from storage daegl:smelter process_buffer[0]

execute if data storage daegl:smelter being_smelted.tag.DaeglCopper run data modify storage daegl:smelter being_smelted.id set value "minecraft:copper_ingot"
execute if data storage daegl:smelter being_smelted.tag.DaeglIron run data modify storage daegl:smelter being_smelted.id set value "minecraft:iron_ingot"
execute if data storage daegl:smelter being_smelted.tag.DaeglGold run data modify storage daegl:smelter being_smelted.id set value "minecraft:gold_ingot"

data remove storage daegl:smelter being_smelted.tag
data modify storage daegl:smelter output_buffer append from storage daegl:smelter being_smelted

data remove storage daegl:smelter being_smelted
data remove storage daegl:smelter process_buffer[0]