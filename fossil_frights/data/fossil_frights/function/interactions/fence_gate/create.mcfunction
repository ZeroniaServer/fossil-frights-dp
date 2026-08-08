execute unless block ~ ~ ~ #minecraft:fence_gates run tellraw @s {color:"red",text:"There is no fence gate block here"}
execute unless block ~ ~ ~ #minecraft:fence_gates run return fail
execute if function fossil_frights:interactions/fence_gate/create/check_occupied run return run tellraw @s {color:"red",text:"This block is already occupied by a custom fence gate"}

data modify storage fossil_frights:fence_gate entity_data set value {Tags:["ff_fence_gate"],data:{ff_fence_gate:{}},response:true,width:1.001,height:0.75}

execute if block ~ ~ ~ #minecraft:fence_gates[facing=east] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_facing set value "east"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=south] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_facing set value "south"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_facing set value "west"
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_facing set value "north"
execute if block ~ ~ ~ #minecraft:fence_gates[in_wall=true] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_in_wall set value "true"
execute if block ~ ~ ~ #minecraft:fence_gates[in_wall=false] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_in_wall set value "false"
execute if block ~ ~ ~ #minecraft:fence_gates[powered=true] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_powered set value "true"
execute if block ~ ~ ~ #minecraft:fence_gates[powered=false] run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_powered set value "false"

execute if block ~ ~ ~ minecraft:acacia_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:acacia_fence_gate"
execute if block ~ ~ ~ minecraft:bamboo_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:bamboo_fence_gate"
execute if block ~ ~ ~ minecraft:birch_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:birch_fence_gate"
execute if block ~ ~ ~ minecraft:crimson_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:crimson_fence_gate"
execute if block ~ ~ ~ minecraft:dark_oak_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:dark_oak_fence_gate"
execute if block ~ ~ ~ minecraft:jungle_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:jungle_fence_gate"
execute if block ~ ~ ~ minecraft:mangrove_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:mangrove_fence_gate"
execute if block ~ ~ ~ minecraft:oak_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:oak_fence_gate"
execute if block ~ ~ ~ minecraft:pale_oak_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:pale_oak_fence_gate"
execute if block ~ ~ ~ minecraft:spruce_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:spruce_fence_gate"
execute if block ~ ~ ~ minecraft:warped_fence_gate run data modify storage fossil_frights:fence_gate entity_data.data.ff_fence_gate.block_type set value "minecraft:warped_fence_gate"

execute align xyz positioned ~0.5 ~0.25 ~0.5 summon minecraft:interaction run function fossil_frights:interactions/fence_gate/create/summon

data remove storage fossil_frights:fence_gate entity_data
