execute unless block ~ ~ ~ #buttons run tellraw @s {color:"red",text:"There is no button block here"}
execute unless block ~ ~ ~ #buttons run return fail

data modify storage fossil_frights:button entity_data set value {Tags:["ff_button"],data:{ff_button:{}},response:true}
$data modify storage fossil_frights:button entity_data.data.ff_button.function set value "$(runs_function)"

execute if block ~ ~ ~ #buttons[face=floor] run data modify storage fossil_frights:button entity_data.data.ff_button.block_face set value "floor"
execute if block ~ ~ ~ #buttons[face=wall] run data modify storage fossil_frights:button entity_data.data.ff_button.block_face set value "wall"
execute if block ~ ~ ~ #buttons[face=ceiling] run data modify storage fossil_frights:button entity_data.data.ff_button.block_face set value "ceiling"
execute if block ~ ~ ~ #buttons[facing=east] run data modify storage fossil_frights:button entity_data.data.ff_button.block_facing set value "east"
execute if block ~ ~ ~ #buttons[facing=south] run data modify storage fossil_frights:button entity_data.data.ff_button.block_facing set value "south"
execute if block ~ ~ ~ #buttons[facing=west] run data modify storage fossil_frights:button entity_data.data.ff_button.block_facing set value "west"
execute if block ~ ~ ~ #buttons[facing=north] run data modify storage fossil_frights:button entity_data.data.ff_button.block_facing set value "north"
execute if block ~ ~ ~ minecraft:oak_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:oak_button"
execute if block ~ ~ ~ minecraft:spruce_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:spruce_button"
execute if block ~ ~ ~ minecraft:birch_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:birch_button"
execute if block ~ ~ ~ minecraft:jungle_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:jungle_button"
execute if block ~ ~ ~ minecraft:acacia_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:acacia_button"
execute if block ~ ~ ~ minecraft:dark_oak_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:dark_oak_button"
execute if block ~ ~ ~ minecraft:mangrove_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:mangrove_button"
execute if block ~ ~ ~ minecraft:cherry_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:cherry_button"
execute if block ~ ~ ~ minecraft:pale_oak_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:pale_oak_button"
execute if block ~ ~ ~ minecraft:bamboo_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:bamboo_button"
execute if block ~ ~ ~ minecraft:crimson_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:crimson_button"
execute if block ~ ~ ~ minecraft:warped_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:warped_button"
execute if block ~ ~ ~ minecraft:stone_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:stone_button"
execute if block ~ ~ ~ minecraft:polished_blackstone_button run data modify storage fossil_frights:button entity_data.data.ff_button.block_type set value "minecraft:polished_blackstone_button"

execute if block ~ ~ ~ #buttons[face=floor] align xyz positioned ~0.5 ~ ~0.5 summon minecraft:interaction run function fossil_frights:interactions/button/create/floor_or_ceiling
execute if block ~ ~ ~ #buttons[face=ceiling] align xyz positioned ~0.5 ~0.749 ~0.5 summon minecraft:interaction run function fossil_frights:interactions/button/create/floor_or_ceiling
execute if block ~ ~ ~ #buttons[face=wall,facing=east] align xyz positioned ~0.0625 ~0.3115 ~0.5 summon minecraft:interaction run function fossil_frights:interactions/button/create/wall
execute if block ~ ~ ~ #buttons[face=wall,facing=south] align xyz positioned ~0.5 ~0.3115 ~0.0625 summon minecraft:interaction run function fossil_frights:interactions/button/create/wall
execute if block ~ ~ ~ #buttons[face=wall,facing=west] align xyz positioned ~0.9375 ~0.3115 ~0.5 summon minecraft:interaction run function fossil_frights:interactions/button/create/wall
execute if block ~ ~ ~ #buttons[face=wall,facing=north] align xyz positioned ~0.5 ~0.3115 ~0.9375 summon minecraft:interaction run function fossil_frights:interactions/button/create/wall


data remove storage fossil_frights:button entity_data
