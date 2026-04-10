function fossil_frights:tasks/tracker/hide
function fossil_frights:tasks/tracker/update_title
execute if score $game_running ff_game_state matches 1 if score $day_active ff_day matches 1 if entity @a[limit=1] run function fossil_frights:tasks/tracker/show

scoreboard players reset $tt_check_security ff_task_tracker
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

execute if score $check_security_sel ff_task_state matches 1 run scoreboard players operation $tt_check_security ff_task_tracker = #line_check_security ff_task_state
execute if score $check_security_sel ff_task_state matches 1 unless score $check_security_done ff_task_state matches 1 run scoreboard players display name $tt_check_security ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Security","italic":false}]
execute if score $check_security_done ff_task_state matches 1 run scoreboard players display name $tt_check_security ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Check Security","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_1_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_1 ff_task_tracker = #line_easy_task_1 ff_task_state
execute if score $easy_task_1_sel ff_task_state matches 1 unless score $easy_task_1_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_1 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 1","italic":false}]
execute if score $easy_task_1_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_1 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 1","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_2_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_2 ff_task_tracker = #line_easy_task_2 ff_task_state
execute if score $easy_task_2_sel ff_task_state matches 1 unless score $easy_task_2_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_2 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 2","italic":false}]
execute if score $easy_task_2_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_2 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 2","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_3_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_3 ff_task_tracker = #line_easy_task_3 ff_task_state
execute if score $easy_task_3_sel ff_task_state matches 1 unless score $easy_task_3_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_3 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 3","italic":false}]
execute if score $easy_task_3_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_3 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 3","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_4_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_4 ff_task_tracker = #line_easy_task_4 ff_task_state
execute if score $easy_task_4_sel ff_task_state matches 1 unless score $easy_task_4_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_4 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 4","italic":false}]
execute if score $easy_task_4_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_4 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 4","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_5_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_5 ff_task_tracker = #line_easy_task_5 ff_task_state
execute if score $easy_task_5_sel ff_task_state matches 1 unless score $easy_task_5_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_5 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 5","italic":false}]
execute if score $easy_task_5_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_5 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 5","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_6_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_6 ff_task_tracker = #line_easy_task_6 ff_task_state
execute if score $easy_task_6_sel ff_task_state matches 1 unless score $easy_task_6_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_6 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 6","italic":false}]
execute if score $easy_task_6_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_6 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 6","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_7_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_7 ff_task_tracker = #line_easy_task_7 ff_task_state
execute if score $easy_task_7_sel ff_task_state matches 1 unless score $easy_task_7_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_7 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 7","italic":false}]
execute if score $easy_task_7_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_7 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 7","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_8_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_8 ff_task_tracker = #line_easy_task_8 ff_task_state
execute if score $easy_task_8_sel ff_task_state matches 1 unless score $easy_task_8_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_8 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 8","italic":false}]
execute if score $easy_task_8_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_8 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 8","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_9_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_9 ff_task_tracker = #line_easy_task_9 ff_task_state
execute if score $easy_task_9_sel ff_task_state matches 1 unless score $easy_task_9_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_9 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 9","italic":false}]
execute if score $easy_task_9_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_9 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 9","color":"gray","italic":false,"strikethrough":true}]
execute if score $easy_task_10_sel ff_task_state matches 1 run scoreboard players operation $tt_easy_task_10 ff_task_tracker = #line_easy_task_10 ff_task_state
execute if score $easy_task_10_sel ff_task_state matches 1 unless score $easy_task_10_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_10 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 10","italic":false}]
execute if score $easy_task_10_done ff_task_state matches 1 run scoreboard players display name $tt_easy_task_10 ff_task_tracker [{"atlas":"blocks","sprite":"fossil-frights:custom/general_items/task_easy"},{"text":" Easy Task 10","color":"gray","italic":false,"strikethrough":true}]

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
