function fossil_frights:key/lock/clear
execute if score $heist_mode_active ff_game_state matches 1 if score $heist_round_active ff_game_state matches 1 run function fossil_frights:key/lock/spawn_heist_selected
execute unless score $heist_mode_active ff_game_state matches 1 run function fossil_frights:key/lock/spawn_all
execute if score $heist_mode_active ff_game_state matches 1 unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:key/lock/spawn_all
