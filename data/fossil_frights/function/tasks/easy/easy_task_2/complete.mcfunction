execute if score $easy_task_2_sel ff_task_state matches 1 if score $easy_task_2_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $easy_task_2_sel ff_task_state matches 1 run scoreboard players set $easy_task_2_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
