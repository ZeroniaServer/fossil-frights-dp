execute if score $smell_gingerbread_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $smell_gingerbread_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/smell_gingerbread
scoreboard players set $smell_gingerbread_sel ff_task_state 1
scoreboard players set $smell_gingerbread_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
