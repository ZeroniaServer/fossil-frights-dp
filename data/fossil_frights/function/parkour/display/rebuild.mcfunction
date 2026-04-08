function fossil_frights:parkour/display/cleanup
execute if score $parkour_best_exists ff_parkour_display matches 1.. run function fossil_frights:parkour/display/format_best
execute if score $parkour_best_exists ff_parkour_display matches 1.. run function fossil_frights:parkour/display/show_best
execute unless score $parkour_best_exists ff_parkour_display matches 1.. run function fossil_frights:parkour/display/show_empty

