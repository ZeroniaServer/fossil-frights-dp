scoreboard players remove $compass_marker_refresh ff_compass 1
execute if score $compass_marker_refresh ff_compass matches ..0 run scoreboard players operation $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:locator_bar/markers/sync
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:locator_bar/particles/tasks
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:locator_bar/particles/hazards
scoreboard players operation $heist_particle_tick ff_compass = #gametime ff_global
scoreboard players operation $heist_particle_tick ff_compass %= #4 ff_constant
execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 if score $heist_particle_tick ff_compass matches 0 run function fossil_frights:locator_bar/particles/heist
