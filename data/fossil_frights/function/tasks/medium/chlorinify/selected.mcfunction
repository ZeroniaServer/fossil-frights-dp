execute if score $chlorinify_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $chlorinify_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/chlorinify/selected_book
scoreboard players set $chlorinify_sel ff_task_state 1
scoreboard players set $chlorinify_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
