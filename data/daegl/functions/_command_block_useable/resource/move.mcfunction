

execute if score current daegl.game_stage = COPPER daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_copper daegl.temp if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:raw_copper"}]
execute if score current daegl.game_stage = IRON daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_iron daegl.temp if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:raw_iron"}]
execute if score current daegl.game_stage = GOLD daegl.game_stage store success score daegl._command_block_useable.resource.move#is_raw_gold daegl.temp if data block ~ ~ ~ Items[{Slot:0b, id:"minecraft:raw_gold"}]

scoreboard players operation daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp += daegl._command_block_useable.resource.move#is_raw_copper daegl.temp
scoreboard players operation daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp += daegl._command_block_useable.resource.move#is_raw_iron daegl.temp
scoreboard players operation daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp += daegl._command_block_useable.resource.move#is_raw_gold daegl.temp

execute if score daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp = #true daegl.constants run item replace block -242 102 -257 container.0 from block ~ ~ ~ container.0 
execute unless score daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp = #true daegl.constants run item replace block -247 103 -257 container.0 from block ~ ~ ~ container.0

item replace block ~ ~ ~ container.0 with minecraft:air

scoreboard players reset daegl._command_block_useable.resource.move#is_raw_iron daegl.temp
scoreboard players reset daegl._command_block_useable.resource.move#is_raw_gold daegl.temp
scoreboard players reset daegl._command_block_useable.resource.move#is_raw_copper daegl.temp
scoreboard players reset daegl._command_block_useable.resource.move#is_correct_item_type daegl.temp
