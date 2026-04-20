execute if score $lb_best_index ff_lb_calc matches -1 run function fossil_frights:leaderboards/display/set_best_day
execute if score $lb_best_kind ff_lb_calc matches 2 if score $lb_scan_day ff_lb_calc > $lb_best_value ff_lb_calc run function fossil_frights:leaderboards/display/set_best_day
