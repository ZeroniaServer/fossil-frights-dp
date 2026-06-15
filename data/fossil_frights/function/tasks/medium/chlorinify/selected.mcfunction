execute if score $chlorinify_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $chlorinify_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/chlorinify
scoreboard players set $chlorinify_sel ff_task_state 1
scoreboard players set $chlorinify_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
