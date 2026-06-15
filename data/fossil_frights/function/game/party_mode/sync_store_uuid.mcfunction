data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score @s ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0] 1
execute store result score @s ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1] 1
execute store result score @s ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2] 1
execute store result score @s ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3] 1
data remove storage fossil_frights:nbt uuid
