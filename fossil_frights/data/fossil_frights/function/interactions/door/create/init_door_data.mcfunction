tag @s add ff_door

data merge entity @s {teleport_duration:2}

data modify storage fossil_frights:door door_data set value {sound_type:"wooden",model_type:"spruce"}

execute if block ~ ~ ~ #fossil_frights:door_sound_type/bamboo_wood run data modify storage fossil_frights:door door_data.sound_type set value "bamboo_wood"
execute if block ~ ~ ~ #fossil_frights:door_sound_type/cherry_wood run data modify storage fossil_frights:door door_data.sound_type set value "cherry_wood"
execute if block ~ ~ ~ #fossil_frights:door_sound_type/copper run data modify storage fossil_frights:door door_data.sound_type set value "copper"
execute if block ~ ~ ~ #fossil_frights:door_sound_type/iron run data modify storage fossil_frights:door door_data.sound_type set value "iron"
execute if block ~ ~ ~ #fossil_frights:door_sound_type/nether_wood run data modify storage fossil_frights:door door_data.sound_type set value "nether_wood"

execute if block ~ ~ ~ minecraft:dark_oak_door run data modify storage fossil_frights:door door_data.model_type set value "dark_oak"
execute if block ~ ~ ~ minecraft:iron_door run data modify storage fossil_frights:door door_data.model_type set value "iron"
execute if block ~ ~ ~ minecraft:jungle_door run data modify storage fossil_frights:door door_data.model_type set value "jungle"
execute if block ~ ~ ~ minecraft:spruce_door run data modify storage fossil_frights:door door_data.model_type set value "spruce"
execute if block ~ ~ ~ minecraft:weathered_copper_door run data modify storage fossil_frights:door door_data.model_type set value "weathered_copper"
execute if block ~ ~ ~ minecraft:waxed_weathered_copper_door run data modify storage fossil_frights:door door_data.model_type set value "weathered_copper"

data modify entity @s data.ff_door set from storage fossil_frights:door door_data

function fossil_frights:interactions/door/reset/reset_door
