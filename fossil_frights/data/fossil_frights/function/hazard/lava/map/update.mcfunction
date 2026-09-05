execute if predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:hazard/lava/map/set_lava
execute unless predicate fossil_frights:game_state/heist_mode_active if score lava ff_hazard_active matches 1 run function fossil_frights:hazard/lava/map/set_lava
execute unless predicate fossil_frights:game_state/heist_mode_active unless score lava ff_hazard_active matches 1 run function fossil_frights:hazard/lava/map/set_air
