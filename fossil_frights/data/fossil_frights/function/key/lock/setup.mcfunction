function fossil_frights:key/lock/clear
execute if predicate fossil_frights:game_state/heist_mode_active if score $heist_round_active ff_game_state matches 1 run function fossil_frights:key/lock/spawn_heist_selected
execute unless predicate fossil_frights:game_state/heist_mode_active run function fossil_frights:key/lock/spawn_all
execute if predicate fossil_frights:game_state/heist_mode_active unless score $heist_round_active ff_game_state matches 1 run function fossil_frights:key/lock/spawn_all
