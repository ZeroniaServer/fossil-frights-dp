execute if score $water_temp_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $water_temp_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/water_temp
scoreboard players set $water_temp_sel ff_task_state 1
scoreboard players set $water_temp_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
