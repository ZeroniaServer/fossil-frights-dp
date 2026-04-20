execute if score $picnic_with_trike_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $picnic_with_trike_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/picnic_with_trike/selected_book
scoreboard players set $picnic_with_trike_sel ff_task_state 1
scoreboard players set $picnic_with_trike_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
