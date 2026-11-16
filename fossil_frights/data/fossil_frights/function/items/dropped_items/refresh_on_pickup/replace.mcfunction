$execute as @p[distance=0..,tag=ff_item_entity_pickup.target_candidate] run loot replace block 0 0 0 container.0 1 loot $(loot_table)
item override block 0 0 0 container.1 from entity @s contents
execute positioned 0 0 0 summon minecraft:armor_stand run function fossil_frights:items/dropped_items/refresh_on_pickup/preserve_damage
item override entity @s contents from block 0 0 0 container.0
