# asat spawner marker

### hordes ###

# easy

execute if entity @s[tag=zombie_horde_easy] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace

execute if entity @s[tag=creeper_horde_easy] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace

execute if entity @s[tag=skeleton_horde_easy] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:skeleton", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:bow", Count: 1b}, {}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace

# medium

execute if entity @s[tag=zombie_horde_medium] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:iron_shovel", Count: 1b}, {}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}, SpawnPotentials: [{weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:iron_shovel", Count: 1b}, {}]}}}, {weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:iron_pickaxe", Count: 1b}, {}]}}}]} replace

execute if entity @s[tag=creeper_horde_medium] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], ActiveEffects: [{Id: 1, Amplifier: 1b, Duration: 300}, {Id: 19, Amplifier: 1b, Duration: 400}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace

execute if entity @s[tag=skeleton_horde_medium] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:skeleton", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:bow", Count: 1b, tag: {Enchantments: [{id: "minecraft:power", lvl: 2s}]}}, {}], ArmorItems: [{}, {}, {}, {id: "minecraft:iron_helmet", Count: 1b}], ActiveEffects: [{Id: 11b, Amplifier: 1b, Duration: 999999}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace

# hard

execute if entity @s[tag=zombie_horde_hard] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:golden_axe", Count: 1b}, {}], ArmorItems: [{}, {}, {id: "minecraft:golden_chestplate", Count: 1b}, {id: "minecraft:golden_helmet", Count: 1b}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}, SpawnPotentials: [{weight: 2, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:golden_axe", Count: 1b}, {}], ArmorItems: [{}, {}, {id: "minecraft:golden_chestplate", Count: 1b}, {id: "minecraft:golden_helmet", Count: 1b}]}}}, {weight: 2, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:golden_sword", Count: 1b}, {}], ArmorItems: [{}, {}, {id: 'minecraft:golden_chestplate', Count: 1b}, {id: 'minecraft:golden_helmet', Count: 1b}]}}}, {weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/standard_enemy", IsBaby: 1b, Tags: ["daegl_mob"], HandItems: [{id: "minecraft:golden_sword", Count: 1b}, {}], ArmorItems: [{}, {}, {id: 'minecraft:golden_chestplate', Count: 1b}, {id: 'minecraft:golden_helmet', Count: 1b}]}}}]} replace

execute if entity @s[tag=creeper_horde_hard] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], ActiveEffects: [{Id: 1, Amplifier: 1b, Duration: 300}, {Id: 20, Amplifier: 0b, Duration: 400}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}, SpawnPotentials: [{weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], ActiveEffects: [{Id: 1, Amplifier: 1b, Duration: 300}, {Id: 20, Amplifier: 0b, Duration: 400}]}}}, {weight: 4, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], ActiveEffects: [{Id: 18, Amplifier: 1b, Duration: 400}]}}}, {weight: 2, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", powered: 1b, Tags: ["daegl_mob"]}}}, {weight: 2, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:creeper", DeathLootTable: "daegl:entities/standard_enemy", ActiveEffects: [{Id: 22, Amplifier: 1b, Duration: 600}, {Id: 33, Amplifier: 1b, Duration: 600}]}}}]} replace

execute if entity @s[tag=skeleton_horde_hard] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:skeleton", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:bow", Count: 1b, tag: {Enchantments: [{id: "minecraft:power", lvl: 4s}]}}, {id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:long_slowness"}}], ArmorItems: [{id: 'minecraft:chainmail_boots', Count: 1b}, {id: 'minecraft:chainmail_leggings', Count: 1b}, {id: 'minecraft:iron_chestplate', Count: 1b}, {id: 'minecraft:iron_helmet', Count: 1b}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}, SpawnPotentials: [{weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:skeleton", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: "minecraft:bow", Count: 1b, tag: {Enchantments: [{id: "minecraft:power", lvl: 4s}]}}, {id: "minecraft:tipped_arrow", Count: 1b, tag: {Potion: "minecraft:long_slowness"}}], ArmorItems: [{id: 'minecraft:chainmail_boots', Count: 1b}, {id: 'minecraft:chainmail_leggings', Count: 1b}, {id: 'minecraft:iron_chestplate', Count: 1b}, {id: 'minecraft:iron_helmet', Count: 1b}]}}}, {weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:skeleton", DeathLootTable: "daegl:entities/standard_enemy", Tags: ["daegl_mob"], HandItems: [{id: 'minecraft:bow', Count: 1b, tag: {Enchantments: [{id: 'minecraft:power', lvl: 4s}]}}, {}], ArmorItems: [{id: 'minecraft:chainmail_boots', Count: 1b}, {id: 'minecraft:chainmail_leggings', Count: 1b}, {id: 'minecraft:iron_chestplate', Count: 1b}, {id: 'minecraft:iron_helmet', Count: 1b}]}}}]} replace

### power up mobs ###

execute if entity @s[tag=zombie_hard] run setblock ~ ~ ~ spawner{SpawnCount: 1, MinSpawnDelay: 200, MaxSpawnDelay: 600, SpawnData: {entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/greater_enemy", Health: 30f, Tags: ["daegl_mob"], HandItems: [{id: "minecraft:iron_axe", Count: 1b}, {}], ArmorItems: [{id: "minecraft:iron_boots", Count: 1b}, {id: "minecraft:iron_leggings", Count: 1b}, {id: "minecraft:iron_chestplate", Count: 1b}, {id: "minecraft:iron_helmet", Count: 1b}], ActiveEffects: [{Id: 1, Amplifier: 1b, Duration: 999999}, {Id: 11, Amplifier: 1b, Duration: 999999}], Attributes: [{Name: generic.max_health, Base: 30}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}, SpawnPotentials: [{weight: 4, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/greater_enemy", Health: 30f, Tags: ["daegl_mob"], HandItems: [{id: "minecraft:iron_axe", Count: 1b}, {}], ArmorItems: [{id: "minecraft:iron_boots", Count: 1b}, {id: "minecraft:iron_leggings", Count: 1b}, {id: "minecraft:iron_chestplate", Count: 1b}, {id: "minecraft:iron_helmet", Count: 1b}], ActiveEffects: [{Id: 1, Amplifier: 1b, Duration: 999999}, {Id: 11, Amplifier: 1b, Duration: 999999}], Attributes: [{Name: generic.max_health, Base: 30}]}}}, {weight: 1, data: {custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}, entity: {id: "minecraft:zombie", DeathLootTable: "daegl:entities/greater_enemy", Health: 30f, Tags: ["daegl_mob"], HandItems: [{id: 'minecraft:iron_axe', Count: 1b}, {id: "minecraft:totem_of_undying", Count: 1b}], ArmorItems: [{id: 'minecraft:iron_boots', Count: 1b}, {id: 'minecraft:iron_leggings', Count: 1b}, {id: 'minecraft:iron_chestplate', Count: 1b}, {id: 'minecraft:iron_helmet', Count: 1b}], ActiveEffects: [{Id: 1, Amplifier: 1b, Duration: 999999}, {Id: 11, Amplifier: 1b, Duration: 999999}], Attributes: [{Name: generic.max_health, Base: 30}]}}}]} replace

### overgrowth spawners ###

execute if entity @s[tag=daegl.overgrowth.glare_spawner] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:zombified_piglin", Silent: 1b, DeathLootTable: "daegl.overgrowth:glare", CanPickUpLoot: 0b, Tags: ["daegl_mob", "daegl.glare"], CustomName: '{"text":"Glare"}', ArmorItems: [{}, {}, {}, {id: "minecraft:carved_pumpkin", Count: 1b, tag: {CustomModelData: 3}}], ArmorDropChances: [0.085f, 0.085f, 0.085f, -1000.000f], ActiveEffects: [{Id: 14, Amplifier: 1b, Duration: 999999999, ShowParticles: 0b}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace

execute if entity @s[tag=daegl.overgrowth.moss_spirit_spawner] run setblock ~ ~ ~ spawner{SpawnCount: 3, MinSpawnDelay: 60, MaxSpawnDelay: 200, SpawnData: {entity: {id: "minecraft:husk", Silent: 1b, DeathLootTable: "daegl.overgrowth:moss_spirit", CanPickUpLoot: 0b, Tags: ["daegl_mob", "daegl.moss_spirit"], CustomName: '{"text":"Moss Spirit"}', HandItems: [{id: "minecraft:diamond_hoe", Count: 1b, tag: {display: {Name: '{"text":"Treebeard\'s Revenge","color":"green"}'}, Enchantments: [{id: "minecraft:sharpness", lvl: 5s}, {id: "minecraft:sweeping", lvl: 3s}]}}, {}], HandDropChances: [0.001f, 0.085f], ArmorItems: [{id: "minecraft:leather_boots", Count: 1b, tag: {display: {color: 2184206}}}, {id: "minecraft:leather_leggings", Count: 1b, tag: {display: {color: 4200961}}}, {id: "minecraft:leather_chestplate", Count: 1b, tag: {display: {color: 2184206}}}, {id: "minecraft:moss_block", Count: 1b, tag: {CustomModelData: 3}}], ArmorDropChances: [0.085f, -400.000f, -400.000f, -400.000f], ActiveEffects: [{Id: 14, Amplifier: 1b, Duration: 999999999, ShowParticles: 0b}]}, custom_spawn_rules: {sky_light_limit: {min_inclusive: 0, max_inclusive: 15}, block_light_limit: {min_inclusive: 0, max_inclusive: 15}}}} replace