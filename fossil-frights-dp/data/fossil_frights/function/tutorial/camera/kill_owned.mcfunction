data modify storage fossil_frights:nbt uuid set from entity @s UUID
execute store result score $tutorial_uuid_0 ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score $tutorial_uuid_1 ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score $tutorial_uuid_2 ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score $tutorial_uuid_3 ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
execute as @e[type=minecraft:text_display,tag=ff_tutorial_camera] if score @s ff_active_uuid_0 = $tutorial_uuid_0 ff_active_uuid_0 if score @s ff_active_uuid_1 = $tutorial_uuid_1 ff_active_uuid_1 if score @s ff_active_uuid_2 = $tutorial_uuid_2 ff_active_uuid_2 if score @s ff_active_uuid_3 = $tutorial_uuid_3 ff_active_uuid_3 run kill @s
