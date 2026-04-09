execute if score $easy_task_4_sel ff_task_state matches 1 if score $easy_task_4_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Easy Task 4"
execute if score $easy_task_4_sel ff_task_state matches 1 if score $easy_task_4_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $easy_task_4_sel ff_task_state matches 1 if score $easy_task_4_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $easy_task_4_sel ff_task_state matches 1 run scoreboard players set $easy_task_4_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
