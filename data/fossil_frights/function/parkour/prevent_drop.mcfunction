execute unless entity @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/parkour_restart] run return 0
execute store result score $parkour_drop ff_active_uuid_0 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/parkour_restart] Thrower[0] 1
execute store result score $parkour_drop ff_active_uuid_1 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/parkour_restart] Thrower[1] 1
execute store result score $parkour_drop ff_active_uuid_2 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/parkour_restart] Thrower[2] 1
execute store result score $parkour_drop ff_active_uuid_3 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/parkour_restart] Thrower[3] 1
execute if score @s ff_active_uuid_0 = $parkour_drop ff_active_uuid_0 if score @s ff_active_uuid_1 = $parkour_drop ff_active_uuid_1 if score @s ff_active_uuid_2 = $parkour_drop ff_active_uuid_2 if score @s ff_active_uuid_3 = $parkour_drop ff_active_uuid_3 run function fossil_frights:parkour/end
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/parkour_restart]
