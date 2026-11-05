advancement revoke @s only fossil_frights:hazards/floods/click
execute if score #floods_valve_cooldown ff_hazard_rng matches 1.. run return 0
execute if predicate fossil_frights:game_state/hazard_active/floods run function fossil_frights:hazard/floods/clicked_shutoff
execute if predicate fossil_frights:game_state/hazard_active/floods run return 0
execute unless predicate fossil_frights:game_state/game_running run function fossil_frights:hazard/floods/rotate_shutoff
execute unless predicate fossil_frights:game_state/game_running run return 0
function fossil_frights:hazard/floods/clicked_start
