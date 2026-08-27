tp @s ~ ~ ~ ~ ~
data modify storage fossil_frights:position_cache entity_data set from entity @s {}
data modify storage fossil_frights:position_cache position set from storage fossil_frights:position_cache entity_data.Pos
data modify storage fossil_frights:position_cache rotation set from storage fossil_frights:position_cache entity_data.Rotation
data remove storage fossil_frights:position_cache entity_data
tp @s 0 0 0
