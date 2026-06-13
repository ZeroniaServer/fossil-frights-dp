execute unless entity @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/temple_run_restart] run return 0
execute store result score $temple_run_drop ff_active_uuid_0 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/temple_run_restart] Thrower[0] 1
execute store result score $temple_run_drop ff_active_uuid_1 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/temple_run_restart] Thrower[1] 1
execute store result score $temple_run_drop ff_active_uuid_2 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/temple_run_restart] Thrower[2] 1
execute store result score $temple_run_drop ff_active_uuid_3 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/temple_run_restart] Thrower[3] 1
execute if score @s ff_active_uuid_0 = $temple_run_drop ff_active_uuid_0 if score @s ff_active_uuid_1 = $temple_run_drop ff_active_uuid_1 if score @s ff_active_uuid_2 = $temple_run_drop ff_active_uuid_2 if score @s ff_active_uuid_3 = $temple_run_drop ff_active_uuid_3 run function fossil_frights:temple_run/end
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/temple_run_restart]
