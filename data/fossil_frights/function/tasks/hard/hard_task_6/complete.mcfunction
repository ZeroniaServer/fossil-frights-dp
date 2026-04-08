execute if score $hard_task_6_sel ff_task_state matches 1 if score $hard_task_6_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $hard_task_6_sel ff_task_state matches 1 run scoreboard players set $hard_task_6_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
