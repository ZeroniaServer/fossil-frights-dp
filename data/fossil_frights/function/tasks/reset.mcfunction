function fossil_frights:tasks/tracker/hide
scoreboard players set $task_selected_total ff_task_state 0
scoreboard players set $task_completed_total ff_task_state 0

scoreboard players set $security_camera_sel ff_task_state 0
scoreboard players set $security_camera_done ff_task_state 0
scoreboard players set $easy_task_1_sel ff_task_state 0
scoreboard players set $easy_task_1_done ff_task_state 0
scoreboard players set $easy_task_2_sel ff_task_state 0
scoreboard players set $easy_task_2_done ff_task_state 0
scoreboard players set $easy_task_3_sel ff_task_state 0
scoreboard players set $easy_task_3_done ff_task_state 0
scoreboard players set $easy_task_4_sel ff_task_state 0
scoreboard players set $easy_task_4_done ff_task_state 0
scoreboard players set $easy_task_5_sel ff_task_state 0
scoreboard players set $easy_task_5_done ff_task_state 0
scoreboard players set $easy_task_6_sel ff_task_state 0
scoreboard players set $easy_task_6_done ff_task_state 0
scoreboard players set $easy_task_7_sel ff_task_state 0
scoreboard players set $easy_task_7_done ff_task_state 0
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

scoreboard players reset $tt_security_camera ff_task_tracker
scoreboard players reset $tt_easy_task_1 ff_task_tracker
scoreboard players reset $tt_easy_task_2 ff_task_tracker
scoreboard players reset $tt_easy_task_3 ff_task_tracker
scoreboard players reset $tt_easy_task_4 ff_task_tracker
scoreboard players reset $tt_easy_task_5 ff_task_tracker
scoreboard players reset $tt_easy_task_6 ff_task_tracker
scoreboard players reset $tt_easy_task_7 ff_task_tracker
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

function fossil_frights:tasks/easy/security_camera/reset
function fossil_frights:tasks/easy/easy_task_1/reset
function fossil_frights:tasks/easy/easy_task_2/reset
function fossil_frights:tasks/easy/easy_task_3/reset
function fossil_frights:tasks/easy/easy_task_4/reset
function fossil_frights:tasks/easy/easy_task_5/reset
function fossil_frights:tasks/easy/easy_task_6/reset
function fossil_frights:tasks/easy/easy_task_7/reset
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
