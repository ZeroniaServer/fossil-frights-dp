execute if score @s ff_top_day > @e[type=mannequin,tag=ff_lb_entry,tag=ff_lb_best,limit=1] ff_top_day run function fossil_frights:leaderboards/display/swap_day_best
tag @s add ff_lb_scan_done
execute if entity @e[type=mannequin,tag=ff_lb_entry,scores={ff_top_day=1..,ff_top_time=0},tag=!ff_lb_ranked,tag=!ff_lb_scan_done,limit=1] run function fossil_frights:leaderboards/display/scan_day_candidates
