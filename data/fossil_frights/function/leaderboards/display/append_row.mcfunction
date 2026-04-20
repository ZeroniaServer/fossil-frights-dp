$execute if score #lb_slot_$(slot)_index ff_lb_calc matches 0.. run function fossil_frights:leaderboards/display/append_row_filled with storage fossil_frights:leaderboards slot_$(slot)
$execute unless score #lb_slot_$(slot)_index ff_lb_calc matches 0.. run function fossil_frights:leaderboards/display/append_row_empty with storage fossil_frights:leaderboards slot_$(slot)
