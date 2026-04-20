execute if score $nautilus_guard_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $nautilus_guard_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/nautilus_guard/selected_book
scoreboard players set $nautilus_guard_sel ff_task_state 1
scoreboard players set $nautilus_guard_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
