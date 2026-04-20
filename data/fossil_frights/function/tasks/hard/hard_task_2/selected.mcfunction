execute if score $hard_task_2_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $hard_task_2_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/hard_task_2/selected_book
scoreboard players set $hard_task_2_sel ff_task_state 1
scoreboard players set $hard_task_2_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
