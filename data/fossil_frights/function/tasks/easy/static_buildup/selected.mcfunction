execute if score $static_buildup_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $static_buildup_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/static_buildup/selected_book
scoreboard players set $static_buildup_sel ff_task_state 1
scoreboard players set $static_buildup_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
