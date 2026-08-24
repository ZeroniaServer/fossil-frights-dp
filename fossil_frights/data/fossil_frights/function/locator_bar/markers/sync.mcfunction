function fossil_frights:locator_bar/markers/sync_tasks
function fossil_frights:locator_bar/markers/sync_hazards
execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 run function fossil_frights:locator_bar/markers/sync_loot
execute unless predicate fossil_frights:game_state/heist_mode_active run kill @e[type=minecraft:armor_stand,tag=ff_loot_compass_target]
