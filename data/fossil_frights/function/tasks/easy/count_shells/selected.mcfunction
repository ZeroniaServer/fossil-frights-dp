execute if score $count_shells_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $count_shells_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/count_shells/selected_book
scoreboard players set $count_shells_sel ff_task_state 1
scoreboard players set $count_shells_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
