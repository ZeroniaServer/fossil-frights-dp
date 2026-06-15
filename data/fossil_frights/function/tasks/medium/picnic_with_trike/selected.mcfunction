execute if score $picnic_with_trike_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $picnic_with_trike_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/picnic_with_trike
scoreboard players set $picnic_with_trike_sel ff_task_state 1
scoreboard players set $picnic_with_trike_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
