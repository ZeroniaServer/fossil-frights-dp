execute if score $check_ankylo_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $check_ankylo_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/check_ankylo
scoreboard players set $check_ankylo_sel ff_task_state 1
scoreboard players set $check_ankylo_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
