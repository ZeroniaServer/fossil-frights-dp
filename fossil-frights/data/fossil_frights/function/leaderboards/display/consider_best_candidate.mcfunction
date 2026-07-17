execute if score $lb_scan_index ff_lb_calc = #lb_slot_1_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_2_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_3_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_4_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_5_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_6_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_7_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_8_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_9_index ff_lb_calc run return 0
execute if score $lb_scan_index ff_lb_calc = #lb_slot_10_index ff_lb_calc run return 0
scoreboard players set $lb_scan_time ff_lb_calc 0
scoreboard players set $lb_scan_day ff_lb_calc 0
execute store result score $lb_scan_time ff_lb_calc run data get storage fossil_frights:leaderboards scan.top_time
execute store result score $lb_scan_day ff_lb_calc run data get storage fossil_frights:leaderboards scan.top_day
execute if score $lb_scan_time ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/consider_best_time
execute if score $lb_scan_time ff_lb_calc matches ..0 if score $lb_scan_day ff_lb_calc matches 1.. run function fossil_frights:leaderboards/display/consider_best_day
