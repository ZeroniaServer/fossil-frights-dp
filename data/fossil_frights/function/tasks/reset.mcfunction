function fossil_frights:tasks/tracker/hide
scoreboard players set $task_selected_total ff_task_state 0
scoreboard players set $task_completed_total ff_task_state 0
scoreboard players set $hazard_pending ff_task_state 0
scoreboard players set $hazard_delay ff_task_state 0

scoreboard players set $check_security_sel ff_task_state 0
scoreboard players set $check_security_done ff_task_state 0
scoreboard players set $fire_pottery_sel ff_task_state 0
scoreboard players set $fire_pottery_done ff_task_state 0
scoreboard players set $check_ankylo_sel ff_task_state 0
scoreboard players set $check_ankylo_done ff_task_state 0
scoreboard players set $climb_the_tower_sel ff_task_state 0
scoreboard players set $climb_the_tower_done ff_task_state 0
scoreboard players set $count_shells_sel ff_task_state 0
scoreboard players set $count_shells_done ff_task_state 0
scoreboard players set $count_toes_sel ff_task_state 0
scoreboard players set $count_toes_done ff_task_state 0
scoreboard players set $bathroom_leak_sel ff_task_state 0
scoreboard players set $bathroom_leak_done ff_task_state 0
scoreboard players set $toilet_clog_sel ff_task_state 0
scoreboard players set $toilet_clog_done ff_task_state 0
scoreboard players set $easy_task_8_sel ff_task_state 0
scoreboard players set $easy_task_8_done ff_task_state 0
scoreboard players set $easy_task_9_sel ff_task_state 0
scoreboard players set $easy_task_9_done ff_task_state 0
scoreboard players set $easy_task_10_sel ff_task_state 0
scoreboard players set $easy_task_10_done ff_task_state 0

scoreboard players set $medium_task_1_sel ff_task_state 0
scoreboard players set $medium_task_1_done ff_task_state 0
scoreboard players set $medium_task_2_sel ff_task_state 0
scoreboard players set $medium_task_2_done ff_task_state 0
scoreboard players set $medium_task_3_sel ff_task_state 0
scoreboard players set $medium_task_3_done ff_task_state 0
scoreboard players set $medium_task_4_sel ff_task_state 0
scoreboard players set $medium_task_4_done ff_task_state 0
scoreboard players set $medium_task_5_sel ff_task_state 0
scoreboard players set $medium_task_5_done ff_task_state 0
scoreboard players set $medium_task_6_sel ff_task_state 0
scoreboard players set $medium_task_6_done ff_task_state 0
scoreboard players set $medium_task_7_sel ff_task_state 0
scoreboard players set $medium_task_7_done ff_task_state 0
scoreboard players set $medium_task_8_sel ff_task_state 0
scoreboard players set $medium_task_8_done ff_task_state 0
scoreboard players set $medium_task_9_sel ff_task_state 0
scoreboard players set $medium_task_9_done ff_task_state 0
scoreboard players set $medium_task_10_sel ff_task_state 0
scoreboard players set $medium_task_10_done ff_task_state 0

scoreboard players set $hard_task_1_sel ff_task_state 0
scoreboard players set $hard_task_1_done ff_task_state 0
scoreboard players set $hard_task_2_sel ff_task_state 0
scoreboard players set $hard_task_2_done ff_task_state 0
scoreboard players set $hard_task_3_sel ff_task_state 0
scoreboard players set $hard_task_3_done ff_task_state 0
scoreboard players set $hard_task_4_sel ff_task_state 0
scoreboard players set $hard_task_4_done ff_task_state 0
scoreboard players set $hard_task_5_sel ff_task_state 0
scoreboard players set $hard_task_5_done ff_task_state 0
scoreboard players set $hard_task_6_sel ff_task_state 0
scoreboard players set $hard_task_6_done ff_task_state 0
scoreboard players set $hard_task_7_sel ff_task_state 0
scoreboard players set $hard_task_7_done ff_task_state 0
scoreboard players set $hard_task_8_sel ff_task_state 0
scoreboard players set $hard_task_8_done ff_task_state 0
scoreboard players set $hard_task_9_sel ff_task_state 0
scoreboard players set $hard_task_9_done ff_task_state 0
scoreboard players set $hard_task_10_sel ff_task_state 0
scoreboard players set $hard_task_10_done ff_task_state 0

scoreboard players set $final_task_sel ff_task_state 0
scoreboard players set $final_task_done ff_task_state 0

scoreboard players reset $tt_check_security ff_task_tracker
scoreboard players reset $tt_fire_pottery ff_task_tracker
scoreboard players reset $tt_check_ankylo ff_task_tracker
scoreboard players reset $tt_climb_the_tower ff_task_tracker
scoreboard players reset $tt_count_shells ff_task_tracker
scoreboard players reset $tt_count_toes ff_task_tracker
scoreboard players reset $tt_bathroom_leak ff_task_tracker
scoreboard players reset $tt_toilet_clog ff_task_tracker
scoreboard players reset $tt_easy_task_8 ff_task_tracker
scoreboard players reset $tt_easy_task_9 ff_task_tracker
scoreboard players reset $tt_easy_task_10 ff_task_tracker
scoreboard players reset $tt_medium_task_1 ff_task_tracker
scoreboard players reset $tt_medium_task_2 ff_task_tracker
scoreboard players reset $tt_medium_task_3 ff_task_tracker
scoreboard players reset $tt_medium_task_4 ff_task_tracker
scoreboard players reset $tt_medium_task_5 ff_task_tracker
scoreboard players reset $tt_medium_task_6 ff_task_tracker
scoreboard players reset $tt_medium_task_7 ff_task_tracker
scoreboard players reset $tt_medium_task_8 ff_task_tracker
scoreboard players reset $tt_medium_task_9 ff_task_tracker
scoreboard players reset $tt_medium_task_10 ff_task_tracker
scoreboard players reset $tt_hard_task_1 ff_task_tracker
scoreboard players reset $tt_hard_task_2 ff_task_tracker
scoreboard players reset $tt_hard_task_3 ff_task_tracker
scoreboard players reset $tt_hard_task_4 ff_task_tracker
scoreboard players reset $tt_hard_task_5 ff_task_tracker
scoreboard players reset $tt_hard_task_6 ff_task_tracker
scoreboard players reset $tt_hard_task_7 ff_task_tracker
scoreboard players reset $tt_hard_task_8 ff_task_tracker
scoreboard players reset $tt_hard_task_9 ff_task_tracker
scoreboard players reset $tt_hard_task_10 ff_task_tracker
scoreboard players reset $tt_final_task ff_task_tracker

function fossil_frights:tasks/easy/check_security/reset
function fossil_frights:tasks/easy/fire_pottery/reset
function fossil_frights:tasks/easy/check_ankylo/reset
function fossil_frights:tasks/easy/climb_the_tower/reset
function fossil_frights:tasks/easy/count_shells/reset
function fossil_frights:tasks/easy/count_toes/reset
function fossil_frights:tasks/easy/bathroom_leak/reset
function fossil_frights:tasks/easy/toilet_clog/reset
function fossil_frights:tasks/easy/easy_task_8/reset
function fossil_frights:tasks/easy/easy_task_9/reset
function fossil_frights:tasks/easy/easy_task_10/reset
function fossil_frights:tasks/medium/medium_task_1/reset
function fossil_frights:tasks/medium/medium_task_2/reset
function fossil_frights:tasks/medium/medium_task_3/reset
function fossil_frights:tasks/medium/medium_task_4/reset
function fossil_frights:tasks/medium/medium_task_5/reset
function fossil_frights:tasks/medium/medium_task_6/reset
function fossil_frights:tasks/medium/medium_task_7/reset
function fossil_frights:tasks/medium/medium_task_8/reset
function fossil_frights:tasks/medium/medium_task_9/reset
function fossil_frights:tasks/medium/medium_task_10/reset
function fossil_frights:tasks/hard/hard_task_1/reset
function fossil_frights:tasks/hard/hard_task_2/reset
function fossil_frights:tasks/hard/hard_task_3/reset
function fossil_frights:tasks/hard/hard_task_4/reset
function fossil_frights:tasks/hard/hard_task_5/reset
function fossil_frights:tasks/hard/hard_task_6/reset
function fossil_frights:tasks/hard/hard_task_7/reset
function fossil_frights:tasks/hard/hard_task_8/reset
function fossil_frights:tasks/hard/hard_task_9/reset
function fossil_frights:tasks/hard/hard_task_10/reset
function fossil_frights:tasks/final/final_task/reset
