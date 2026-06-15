execute if score $count_toes_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $count_toes_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/count_toes
scoreboard players set $count_toes_sel ff_task_state 1
scoreboard players set $count_toes_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
