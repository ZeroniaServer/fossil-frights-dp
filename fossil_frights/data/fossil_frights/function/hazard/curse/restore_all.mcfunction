# Restore curse baseline
execute if predicate fossil_frights:game_state/hazard_active/lights run function fossil_frights:hazard/curse/restore_off
execute unless predicate fossil_frights:game_state/hazard_active/lights run function fossil_frights:hazard/curse/restore_on
