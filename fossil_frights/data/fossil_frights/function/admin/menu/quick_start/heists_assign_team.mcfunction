execute if score $quick_start_heists_slot ff_game_state matches 0 if score $quick_start_heists_first_team ff_game_state matches 0 run function fossil_frights:command/join_random_guard
execute if score $quick_start_heists_slot ff_game_state matches 0 if score $quick_start_heists_first_team ff_game_state matches 1 run function fossil_frights:command/join_random_thief
execute if score $quick_start_heists_slot ff_game_state matches 1 if score $quick_start_heists_first_team ff_game_state matches 0 run function fossil_frights:command/join_random_thief
execute if score $quick_start_heists_slot ff_game_state matches 1 if score $quick_start_heists_first_team ff_game_state matches 1 run function fossil_frights:command/join_random_guard
scoreboard players add $quick_start_heists_slot ff_game_state 1
scoreboard players operation $quick_start_heists_slot ff_game_state %= #2 ff_constant
