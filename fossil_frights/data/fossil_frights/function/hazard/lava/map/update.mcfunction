execute if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:hazard/lava/map/set_lava
execute unless predicate fossil_frights:game_state/heist_mode_active if predicate fossil_frights:game_state/hazard_active/lava run function fossil_frights:hazard/lava/map/set_lava
execute unless predicate fossil_frights:game_state/heist_mode_active unless predicate fossil_frights:game_state/hazard_active/lava run function fossil_frights:hazard/lava/map/set_air
