clear @s *[minecraft:custom_data~{ff_any_key:true}]
$execute unless predicate fossil_frights:game_state/game_running run loot replace entity @s $(slot) loot fossil_frights:items/key/storage_key_disabled
$execute if predicate fossil_frights:game_state/game_running unless score $day_active ff_day matches 1 run loot replace entity @s $(slot) loot fossil_frights:items/key/storage_key_disabled
$execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 if score @s ff_key_cooldown matches 1.. run loot replace entity @s $(slot) loot fossil_frights:items/key/storage_key_cooldown
$execute if predicate fossil_frights:game_state/game_running if score $day_active ff_day matches 1 unless score @s ff_key_cooldown matches 1.. run loot replace entity @s $(slot) loot fossil_frights:items/key/storage_key
tag @s add ff_key_restore_done
