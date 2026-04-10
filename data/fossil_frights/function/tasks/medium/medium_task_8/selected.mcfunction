execute if score $medium_task_8_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $medium_task_8_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/medium_task_8/selected_book
scoreboard players set $medium_task_8_sel ff_task_state 1
scoreboard players set $medium_task_8_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
