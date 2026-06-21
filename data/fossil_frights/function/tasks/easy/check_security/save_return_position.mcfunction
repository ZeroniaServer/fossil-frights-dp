tp @s ~ ~ ~ ~ ~
data modify storage fossil_frights:nbt entity_data set from entity @s {}
execute store result score @s ff_forced_spec_x run data get storage fossil_frights:nbt entity_data.Pos[0] 100000
execute store result score @s ff_forced_spec_y run data get storage fossil_frights:nbt entity_data.Pos[1] 1000
execute store result score @s ff_forced_spec_z run data get storage fossil_frights:nbt entity_data.Pos[2] 100000
execute store result score @s ff_forced_spec_yaw run data get storage fossil_frights:nbt entity_data.Rotation[0] 1000
execute store result score @s ff_forced_spec_pitch run data get storage fossil_frights:nbt entity_data.Rotation[1] 1000
data remove storage fossil_frights:nbt entity_data
