execute unless entity @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/ant_leaf] run return 0
execute store result score $ant_leaf_drop ff_active_uuid_0 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/ant_leaf] Thrower[0] 1
execute store result score $ant_leaf_drop ff_active_uuid_1 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/ant_leaf] Thrower[1] 1
execute store result score $ant_leaf_drop ff_active_uuid_2 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/ant_leaf] Thrower[2] 1
execute store result score $ant_leaf_drop ff_active_uuid_3 run data get entity @e[type=minecraft:item,distance=..8,limit=1,sort=nearest,predicate=fossil_frights:entity/contents/ant_leaf] Thrower[3] 1
execute if score @s ff_active_uuid_0 = $ant_leaf_drop ff_active_uuid_0 if score @s ff_active_uuid_1 = $ant_leaf_drop ff_active_uuid_1 if score @s ff_active_uuid_2 = $ant_leaf_drop ff_active_uuid_2 if score @s ff_active_uuid_3 = $ant_leaf_drop ff_active_uuid_3 run function fossil_frights:ant_fight/exit_restore
kill @e[type=minecraft:item,distance=..8,predicate=fossil_frights:entity/contents/ant_leaf]
