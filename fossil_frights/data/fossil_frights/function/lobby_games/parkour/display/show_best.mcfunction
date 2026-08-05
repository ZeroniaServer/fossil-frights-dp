execute if score $parkour_best_min ff_parkour_display matches 1.. run function fossil_frights:lobby_games/parkour/display/show_best_with_minutes_macro with storage fossil_frights:parkour best
execute unless score $parkour_best_min ff_parkour_display matches 1.. run function fossil_frights:lobby_games/parkour/display/show_best_under_minute_macro with storage fossil_frights:parkour best
