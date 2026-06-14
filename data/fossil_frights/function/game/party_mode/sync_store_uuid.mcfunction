data modify storage fossil_frights:uuid this set from entity @s UUID
execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:uuid this[0] 1
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:uuid this[1] 1
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:uuid this[2] 1
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:uuid this[3] 1
data remove storage fossil_frights:uuid this
