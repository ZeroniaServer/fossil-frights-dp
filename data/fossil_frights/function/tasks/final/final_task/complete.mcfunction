execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Final Task"
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $final_task_sel ff_task_state matches 1 if score $final_task_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $final_task_sel ff_task_state matches 1 run scoreboard players set $final_task_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
