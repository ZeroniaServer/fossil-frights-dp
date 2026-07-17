execute if score $lb_worst_index ff_lb_calc matches -1 run function fossil_frights:leaderboards/cache/set_worst_day
execute if score $lb_worst_kind ff_lb_calc matches 1 run function fossil_frights:leaderboards/cache/set_worst_day
execute if score $lb_worst_kind ff_lb_calc matches 2 if score $lb_scan_day ff_lb_calc < $lb_worst_value ff_lb_calc run function fossil_frights:leaderboards/cache/set_worst_day
