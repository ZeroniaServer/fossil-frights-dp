execute store result score @s ff_bat_bug_inventory_count run clear @s *[custom_data~{itemID:"lady_bug"}] 0
execute if score @s ff_bat_bug_inventory_count matches 2.. run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/replace_duplicate
execute if predicate fossil_frights:player/inventory/lady_bug if score @s ff_bat_bug_timer matches 0 run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/pickup
execute if predicate fossil_frights:player/inventory/lady_bug if score @s ff_bat_bug_timer matches 1.. run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/tick_held
execute unless predicate fossil_frights:player/inventory/lady_bug if score @s ff_bat_bug_timer matches 1.. run function fossil_frights:game/heists/loot/rare/pickup/lady_bug/drop
