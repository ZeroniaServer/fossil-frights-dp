execute if score #curse_manual_cooldown ff_hazard_rng matches 1.. run return 0
execute unless predicate fossil_frights:game_state/hazard_active/curse run function fossil_frights:hazard/curse/manual_start
execute if predicate fossil_frights:game_state/hazard_active/curse run function fossil_frights:hazard/curse/manual_stop
