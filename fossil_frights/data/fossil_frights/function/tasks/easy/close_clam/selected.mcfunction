execute if score $close_clam_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $close_clam_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/close_clam
scoreboard players set $close_clam_sel ff_task_state 1
scoreboard players set $close_clam_done ff_task_state 0
function fossil_frights:tasks/easy/close_clam/set_open
function fossil_frights:tasks/easy/close_clam/spawn
function fossil_frights:tasks/tracker/refresh
