execute if score $parkour_best_exists ff_parkour_display matches 0 run function fossil_frights:parkour/update_best
execute if score $parkour_best_exists ff_parkour_display matches 1 if score @s ff_parkour_time < $parkour_best_time ff_parkour_display run function fossil_frights:parkour/update_best

