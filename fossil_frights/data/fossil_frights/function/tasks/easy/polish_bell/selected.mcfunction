execute if score $polish_bell_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $polish_bell_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/polish_bell
scoreboard players set $polish_bell_sel ff_task_state 1
scoreboard players set $polish_bell_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
