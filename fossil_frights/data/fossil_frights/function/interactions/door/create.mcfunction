execute unless block ~ ~ ~ #doors run tellraw @s {color:"red",text:"There is no door block here"}
execute unless block ~ ~ ~ #doors run return fail
execute if block ~ ~-1 ~ #minecraft:doors[half=lower] positioned ~ ~-1 ~ run return run function fossil_frights:interactions/door/create
execute if function fossil_frights:interactions/door/create/check_occupied run return run tellraw @s {color:"red",text:"This block is already occupied by a custom door"}

data modify storage fossil_frights:door entity_data set value {Tags:["ff_door","ff_door.new"],data:{ff_door:{}},response:true,width:0.252,height:2.001}

execute if block ~ ~ ~ #doors[hinge=left] run data modify storage fossil_frights:door entity_data.data.ff_door.block_hinge set value "left"
execute if block ~ ~ ~ #doors[hinge=right] run data modify storage fossil_frights:door entity_data.data.ff_door.block_hinge set value "right"
execute if block ~ ~ ~ #doors[facing=east] run data modify storage fossil_frights:door entity_data.data.ff_door.block_facing set value "east"
execute if block ~ ~ ~ #doors[facing=south] run data modify storage fossil_frights:door entity_data.data.ff_door.block_facing set value "south"
execute if block ~ ~ ~ #doors[facing=west] run data modify storage fossil_frights:door entity_data.data.ff_door.block_facing set value "west"
execute if block ~ ~ ~ #doors[facing=north] run data modify storage fossil_frights:door entity_data.data.ff_door.block_facing set value "north"
execute if block ~ ~ ~ minecraft:acacia_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:acacia_door"
execute if block ~ ~ ~ minecraft:bamboo_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:bamboo_door"
execute if block ~ ~ ~ minecraft:birch_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:birch_door"
execute if block ~ ~ ~ minecraft:cherry_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:cherry_door"
execute if block ~ ~ ~ minecraft:copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:copper_door"
execute if block ~ ~ ~ minecraft:crimson_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:crimson_door"
execute if block ~ ~ ~ minecraft:dark_oak_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:dark_oak_door"
execute if block ~ ~ ~ minecraft:exposed_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:exposed_copper_door"
execute if block ~ ~ ~ minecraft:iron_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:iron_door"
execute if block ~ ~ ~ minecraft:jungle_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:jungle_door"
execute if block ~ ~ ~ minecraft:mangrove_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:mangrove_door"
execute if block ~ ~ ~ minecraft:oak_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:oak_door"
execute if block ~ ~ ~ minecraft:oxidized_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:oxidized_copper_door"
execute if block ~ ~ ~ minecraft:pale_oak_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:pale_oak_door"
execute if block ~ ~ ~ minecraft:spruce_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:spruce_door"
execute if block ~ ~ ~ minecraft:warped_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:warped_door"
execute if block ~ ~ ~ minecraft:waxed_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:waxed_copper_door"
execute if block ~ ~ ~ minecraft:waxed_exposed_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:waxed_exposed_copper_door"
execute if block ~ ~ ~ minecraft:waxed_oxidized_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:waxed_oxidized_copper_door"
execute if block ~ ~ ~ minecraft:waxed_weathered_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:waxed_weathered_copper_door"
execute if block ~ ~ ~ minecraft:weathered_copper_door run data modify storage fossil_frights:door entity_data.data.ff_door.block_type set value "minecraft:weathered_copper_door"

execute if block ~ ~ ~ #doors[facing=east] align xyz positioned ~0.5 ~ ~0.5 rotated -90 0 run function fossil_frights:interactions/door/create/get_row_orientation
execute if block ~ ~ ~ #doors[facing=south] align xyz positioned ~0.5 ~ ~0.5 rotated 0 0 run function fossil_frights:interactions/door/create/get_row_orientation
execute if block ~ ~ ~ #doors[facing=west] align xyz positioned ~0.5 ~ ~0.5 rotated 90 0 run function fossil_frights:interactions/door/create/get_row_orientation
execute if block ~ ~ ~ #doors[facing=north] align xyz positioned ~0.5 ~ ~0.5 rotated 180 0 run function fossil_frights:interactions/door/create/get_row_orientation

data remove storage fossil_frights:door entity_data
