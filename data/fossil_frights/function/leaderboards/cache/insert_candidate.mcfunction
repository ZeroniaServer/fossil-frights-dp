execute store result score $lb_entry_count ff_lb_calc run data get storage fossil_frights:leaderboards entries
execute if score $lb_entry_count ff_lb_calc matches ..49 run function fossil_frights:leaderboards/cache/append_candidate
execute if score $lb_entry_count ff_lb_calc matches ..49 run return 0
scoreboard players set $lb_worst_index ff_lb_calc -1
scoreboard players set $lb_worst_kind ff_lb_calc 0
scoreboard players set $lb_worst_value ff_lb_calc 0
function fossil_frights:leaderboards/cache/scan_worst
execute if score $lb_candidate_time ff_lb_calc matches 1.. if score $lb_worst_kind ff_lb_calc matches 2 run function fossil_frights:leaderboards/cache/replace_worst_prepare
execute if score $lb_candidate_time ff_lb_calc matches 1.. if score $lb_worst_kind ff_lb_calc matches 1 if score $lb_candidate_time ff_lb_calc < $lb_worst_value ff_lb_calc run function fossil_frights:leaderboards/cache/replace_worst_prepare
execute if score $lb_candidate_time ff_lb_calc matches ..0 if score $lb_candidate_day ff_lb_calc matches 1.. if score $lb_worst_kind ff_lb_calc matches 2 if score $lb_candidate_day ff_lb_calc > $lb_worst_value ff_lb_calc run function fossil_frights:leaderboards/cache/replace_worst_prepare
