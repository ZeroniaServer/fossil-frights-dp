scoreboard players remove $compass_marker_refresh ff_compass 1
execute if score $compass_marker_refresh ff_compass matches ..0 run scoreboard players operation $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:compass/markers/sync
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass run function fossil_frights:compass/particles/tasks
execute if score $compass_marker_refresh ff_compass = #compass_refresh_interval ff_compass unless score $heist_mode_active ff_game_state matches 1 run function fossil_frights:compass/particles/hazards
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 if score $heist_flash ff_heist matches 0 run function fossil_frights:compass/particles/heist
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 if score $heist_flash ff_heist matches 4 run function fossil_frights:compass/particles/heist
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 if score $heist_flash ff_heist matches 8 run function fossil_frights:compass/particles/heist
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 if score $heist_flash ff_heist matches 12 run function fossil_frights:compass/particles/heist
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 if score $heist_flash ff_heist matches 16 run function fossil_frights:compass/particles/heist
