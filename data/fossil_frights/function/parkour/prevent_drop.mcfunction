execute unless entity @e[limit=1,type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/parkour_restart] run return 0
data modify storage fossil_frights:nbt uuid set from entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/parkour_restart] Thrower
execute store result score $parkour_drop ff_active_uuid_0 run data get storage fossil_frights:nbt uuid[0]
execute store result score $parkour_drop ff_active_uuid_1 run data get storage fossil_frights:nbt uuid[1]
execute store result score $parkour_drop ff_active_uuid_2 run data get storage fossil_frights:nbt uuid[2]
execute store result score $parkour_drop ff_active_uuid_3 run data get storage fossil_frights:nbt uuid[3]
data remove storage fossil_frights:nbt uuid
execute if score @s ff_active_uuid_0 = $parkour_drop ff_active_uuid_0 if score @s ff_active_uuid_1 = $parkour_drop ff_active_uuid_1 if score @s ff_active_uuid_2 = $parkour_drop ff_active_uuid_2 if score @s ff_active_uuid_3 = $parkour_drop ff_active_uuid_3 run function fossil_frights:parkour/end
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/parkour_restart]
