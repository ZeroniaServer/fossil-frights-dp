execute if score $temple_run_best_exists ff_temple_run_display matches 0 run function fossil_frights:lobby_games/temple_run/update_best
execute if score $temple_run_best_exists ff_temple_run_display matches 1 if score @s ff_temple_run_time < $temple_run_best_time ff_temple_run_display run function fossil_frights:lobby_games/temple_run/update_best

