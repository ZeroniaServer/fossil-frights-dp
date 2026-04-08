execute if score $final_task_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
scoreboard players set $final_task_sel ff_task_state 1
scoreboard players set $final_task_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
