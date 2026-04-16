function fossil_frights:tasks/tracker/hide
function fossil_frights:tasks/tracker/update_title
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if entity @a[limit=1] run function fossil_frights:tasks/tracker/show

scoreboard players reset $tt_check_security ff_task_tracker
scoreboard players reset $tt_fire_pottery ff_task_tracker
scoreboard players reset $tt_check_ankylo ff_task_tracker
scoreboard players reset $tt_climb_the_tower ff_task_tracker
scoreboard players reset $tt_count_shells ff_task_tracker
scoreboard players reset $tt_count_toes ff_task_tracker
scoreboard players reset $tt_bathroom_leak ff_task_tracker
scoreboard players reset $tt_toilet_clog ff_task_tracker
scoreboard players reset $tt_polish_bell ff_task_tracker
scoreboard players reset $tt_lock_register ff_task_tracker
scoreboard players reset $tt_static_buildup ff_task_tracker
scoreboard players reset $tt_reset_salt_level ff_task_tracker
scoreboard players reset $tt_reset_fountain ff_task_tracker
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

execute if score $check_security_sel ff_task_state matches 1 run scoreboard players operation $tt_check_security ff_task_tracker = #line_check_security ff_task_state
execute if score $check_security_sel ff_task_state matches 1 unless score $check_security_done ff_task_state matches 1 run scoreboard players display name $tt_check_security ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Security","italic":false}]
execute if score $check_security_done ff_task_state matches 1 run scoreboard players display name $tt_check_security ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Security","color":"gray","italic":false,"strikethrough":true}]
execute if score $fire_pottery_sel ff_task_state matches 1 run scoreboard players operation $tt_fire_pottery ff_task_tracker = #line_fire_pottery ff_task_state
execute if score $fire_pottery_sel ff_task_state matches 1 unless score $fire_pottery_done ff_task_state matches 1 run scoreboard players display name $tt_fire_pottery ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Fire Pottery","italic":false}]
execute if score $fire_pottery_done ff_task_state matches 1 run scoreboard players display name $tt_fire_pottery ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Fire Pottery","color":"gray","italic":false,"strikethrough":true}]
execute if score $check_ankylo_sel ff_task_state matches 1 run scoreboard players operation $tt_check_ankylo ff_task_tracker = #line_check_ankylo ff_task_state
execute if score $check_ankylo_sel ff_task_state matches 1 unless score $check_ankylo_done ff_task_state matches 1 run scoreboard players display name $tt_check_ankylo ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Ankylo","italic":false}]
execute if score $check_ankylo_done ff_task_state matches 1 run scoreboard players display name $tt_check_ankylo ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Ankylo","color":"gray","italic":false,"strikethrough":true}]
execute if score $climb_the_tower_sel ff_task_state matches 1 run scoreboard players operation $tt_climb_the_tower ff_task_tracker = #line_climb_the_tower ff_task_state
execute if score $climb_the_tower_sel ff_task_state matches 1 unless score $climb_the_tower_done ff_task_state matches 1 run scoreboard players display name $tt_climb_the_tower ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Climb the Tower","italic":false}]
execute if score $climb_the_tower_done ff_task_state matches 1 run scoreboard players display name $tt_climb_the_tower ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Climb the Tower","color":"gray","italic":false,"strikethrough":true}]
execute if score $count_shells_sel ff_task_state matches 1 run scoreboard players operation $tt_count_shells ff_task_tracker = #line_count_shells ff_task_state
execute if score $count_shells_sel ff_task_state matches 1 unless score $count_shells_done ff_task_state matches 1 run scoreboard players display name $tt_count_shells ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Shells","italic":false}]
execute if score $count_shells_done ff_task_state matches 1 run scoreboard players display name $tt_count_shells ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Shells","color":"gray","italic":false,"strikethrough":true}]
execute if score $count_toes_sel ff_task_state matches 1 run scoreboard players operation $tt_count_toes ff_task_tracker = #line_count_toes ff_task_state
execute if score $count_toes_sel ff_task_state matches 1 unless score $count_toes_done ff_task_state matches 1 run scoreboard players display name $tt_count_toes ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Toes","italic":false}]
execute if score $count_toes_done ff_task_state matches 1 run scoreboard players display name $tt_count_toes ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Count Toes","color":"gray","italic":false,"strikethrough":true}]
execute if score $bathroom_leak_sel ff_task_state matches 1 run scoreboard players operation $tt_bathroom_leak ff_task_tracker = #line_bathroom_leak ff_task_state
execute if score $bathroom_leak_sel ff_task_state matches 1 unless score $bathroom_leak_done ff_task_state matches 1 run scoreboard players display name $tt_bathroom_leak ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Bathroom Leak","italic":false}]
execute if score $bathroom_leak_done ff_task_state matches 1 run scoreboard players display name $tt_bathroom_leak ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Bathroom Leak","color":"gray","italic":false,"strikethrough":true}]
execute if score $toilet_clog_sel ff_task_state matches 1 run scoreboard players operation $tt_toilet_clog ff_task_tracker = #line_toilet_clog ff_task_state
execute if score $toilet_clog_sel ff_task_state matches 1 unless score $toilet_clog_done ff_task_state matches 1 run scoreboard players display name $tt_toilet_clog ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Toilet Clog","italic":false}]
execute if score $toilet_clog_done ff_task_state matches 1 run scoreboard players display name $tt_toilet_clog ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Toilet Clog","color":"gray","italic":false,"strikethrough":true}]
execute if score $polish_bell_sel ff_task_state matches 1 run scoreboard players operation $tt_polish_bell ff_task_tracker = #line_polish_bell ff_task_state
execute if score $polish_bell_sel ff_task_state matches 1 unless score $polish_bell_done ff_task_state matches 1 run scoreboard players display name $tt_polish_bell ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Polish Bell","italic":false}]
execute if score $polish_bell_done ff_task_state matches 1 run scoreboard players display name $tt_polish_bell ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Polish Bell","color":"gray","italic":false,"strikethrough":true}]
execute if score $lock_register_sel ff_task_state matches 1 run scoreboard players operation $tt_lock_register ff_task_tracker = #line_lock_register ff_task_state
execute if score $lock_register_sel ff_task_state matches 1 unless score $lock_register_done ff_task_state matches 1 run scoreboard players display name $tt_lock_register ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Lock Register","italic":false}]
execute if score $lock_register_done ff_task_state matches 1 run scoreboard players display name $tt_lock_register ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Lock Register","color":"gray","italic":false,"strikethrough":true}]
execute if score $static_buildup_sel ff_task_state matches 1 run scoreboard players operation $tt_static_buildup ff_task_tracker = #line_static_buildup ff_task_state
execute if score $static_buildup_sel ff_task_state matches 1 unless score $static_buildup_done ff_task_state matches 1 run scoreboard players display name $tt_static_buildup ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Static Buildup","italic":false}]
execute if score $static_buildup_done ff_task_state matches 1 run scoreboard players display name $tt_static_buildup ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Static Buildup","color":"gray","italic":false,"strikethrough":true}]
execute if score $reset_salt_level_sel ff_task_state matches 1 run scoreboard players operation $tt_reset_salt_level ff_task_tracker = #line_reset_salt_level ff_task_state
execute if score $reset_salt_level_sel ff_task_state matches 1 unless score $reset_salt_level_done ff_task_state matches 1 run scoreboard players display name $tt_reset_salt_level ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Salt Level","italic":false}]
execute if score $reset_salt_level_done ff_task_state matches 1 run scoreboard players display name $tt_reset_salt_level ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Salt Level","color":"gray","italic":false,"strikethrough":true}]
execute if score $reset_fountain_sel ff_task_state matches 1 run scoreboard players operation $tt_reset_fountain ff_task_tracker = #line_reset_fountain ff_task_state
execute if score $reset_fountain_sel ff_task_state matches 1 unless score $reset_fountain_done ff_task_state matches 1 run scoreboard players display name $tt_reset_fountain ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Fountain","italic":false}]
execute if score $reset_fountain_done ff_task_state matches 1 run scoreboard players display name $tt_reset_fountain ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Reset Fountain","color":"gray","italic":false,"strikethrough":true}]

execute if score $medium_task_1_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_1 ff_task_tracker = #line_medium_task_1 ff_task_state
execute if score $medium_task_1_sel ff_task_state matches 1 unless score $medium_task_1_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_1 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 1","italic":false}]
execute if score $medium_task_1_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_1 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 1","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_2_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_2 ff_task_tracker = #line_medium_task_2 ff_task_state
execute if score $medium_task_2_sel ff_task_state matches 1 unless score $medium_task_2_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_2 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 2","italic":false}]
execute if score $medium_task_2_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_2 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 2","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_3_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_3 ff_task_tracker = #line_medium_task_3 ff_task_state
execute if score $medium_task_3_sel ff_task_state matches 1 unless score $medium_task_3_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_3 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 3","italic":false}]
execute if score $medium_task_3_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_3 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 3","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_4_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_4 ff_task_tracker = #line_medium_task_4 ff_task_state
execute if score $medium_task_4_sel ff_task_state matches 1 unless score $medium_task_4_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_4 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 4","italic":false}]
execute if score $medium_task_4_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_4 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 4","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_5_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_5 ff_task_tracker = #line_medium_task_5 ff_task_state
execute if score $medium_task_5_sel ff_task_state matches 1 unless score $medium_task_5_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_5 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 5","italic":false}]
execute if score $medium_task_5_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_5 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 5","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_6_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_6 ff_task_tracker = #line_medium_task_6 ff_task_state
execute if score $medium_task_6_sel ff_task_state matches 1 unless score $medium_task_6_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_6 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 6","italic":false}]
execute if score $medium_task_6_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_6 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 6","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_7_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_7 ff_task_tracker = #line_medium_task_7 ff_task_state
execute if score $medium_task_7_sel ff_task_state matches 1 unless score $medium_task_7_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_7 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 7","italic":false}]
execute if score $medium_task_7_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_7 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 7","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_8_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_8 ff_task_tracker = #line_medium_task_8 ff_task_state
execute if score $medium_task_8_sel ff_task_state matches 1 unless score $medium_task_8_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_8 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 8","italic":false}]
execute if score $medium_task_8_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_8 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 8","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_9_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_9 ff_task_tracker = #line_medium_task_9 ff_task_state
execute if score $medium_task_9_sel ff_task_state matches 1 unless score $medium_task_9_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_9 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 9","italic":false}]
execute if score $medium_task_9_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_9 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 9","color":"gray","italic":false,"strikethrough":true}]
execute if score $medium_task_10_sel ff_task_state matches 1 run scoreboard players operation $tt_medium_task_10 ff_task_tracker = #line_medium_task_10 ff_task_state
execute if score $medium_task_10_sel ff_task_state matches 1 unless score $medium_task_10_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_10 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 10","italic":false}]
execute if score $medium_task_10_done ff_task_state matches 1 run scoreboard players display name $tt_medium_task_10 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_medium"},{"text":" Medium Task 10","color":"gray","italic":false,"strikethrough":true}]

execute if score $hard_task_1_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_1 ff_task_tracker = #line_hard_task_1 ff_task_state
execute if score $hard_task_1_sel ff_task_state matches 1 unless score $hard_task_1_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_1 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 1","italic":false}]
execute if score $hard_task_1_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_1 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 1","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_2_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_2 ff_task_tracker = #line_hard_task_2 ff_task_state
execute if score $hard_task_2_sel ff_task_state matches 1 unless score $hard_task_2_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_2 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 2","italic":false}]
execute if score $hard_task_2_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_2 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 2","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_3_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_3 ff_task_tracker = #line_hard_task_3 ff_task_state
execute if score $hard_task_3_sel ff_task_state matches 1 unless score $hard_task_3_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_3 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 3","italic":false}]
execute if score $hard_task_3_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_3 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 3","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_4_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_4 ff_task_tracker = #line_hard_task_4 ff_task_state
execute if score $hard_task_4_sel ff_task_state matches 1 unless score $hard_task_4_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_4 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 4","italic":false}]
execute if score $hard_task_4_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_4 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 4","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_5_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_5 ff_task_tracker = #line_hard_task_5 ff_task_state
execute if score $hard_task_5_sel ff_task_state matches 1 unless score $hard_task_5_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_5 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 5","italic":false}]
execute if score $hard_task_5_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_5 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 5","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_6_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_6 ff_task_tracker = #line_hard_task_6 ff_task_state
execute if score $hard_task_6_sel ff_task_state matches 1 unless score $hard_task_6_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_6 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 6","italic":false}]
execute if score $hard_task_6_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_6 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 6","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_7_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_7 ff_task_tracker = #line_hard_task_7 ff_task_state
execute if score $hard_task_7_sel ff_task_state matches 1 unless score $hard_task_7_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_7 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 7","italic":false}]
execute if score $hard_task_7_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_7 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 7","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_8_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_8 ff_task_tracker = #line_hard_task_8 ff_task_state
execute if score $hard_task_8_sel ff_task_state matches 1 unless score $hard_task_8_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_8 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 8","italic":false}]
execute if score $hard_task_8_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_8 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 8","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_9_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_9 ff_task_tracker = #line_hard_task_9 ff_task_state
execute if score $hard_task_9_sel ff_task_state matches 1 unless score $hard_task_9_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_9 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 9","italic":false}]
execute if score $hard_task_9_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_9 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 9","color":"gray","italic":false,"strikethrough":true}]
execute if score $hard_task_10_sel ff_task_state matches 1 run scoreboard players operation $tt_hard_task_10 ff_task_tracker = #line_hard_task_10 ff_task_state
execute if score $hard_task_10_sel ff_task_state matches 1 unless score $hard_task_10_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_10 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 10","italic":false}]
execute if score $hard_task_10_done ff_task_state matches 1 run scoreboard players display name $tt_hard_task_10 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_hard"},{"text":" Hard Task 10","color":"gray","italic":false,"strikethrough":true}]

execute if score $final_task_sel ff_task_state matches 1 run scoreboard players operation $tt_final_task ff_task_tracker = #line_final_task ff_task_state
execute if score $final_task_sel ff_task_state matches 1 unless score $final_task_done ff_task_state matches 1 run scoreboard players display name $tt_final_task ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_final"},{"text":" Final Task","italic":false}]
execute if score $final_task_done ff_task_state matches 1 run scoreboard players display name $tt_final_task ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_final"},{"text":" Final Task","color":"gray","italic":false,"strikethrough":true}]
