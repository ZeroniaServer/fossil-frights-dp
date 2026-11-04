execute if score $stuff_stocking_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $stuff_stocking_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/stuff_stocking
scoreboard players set $stuff_stocking_sel ff_task_state 1
scoreboard players set $stuff_stocking_done ff_task_state 0
function fossil_frights:tasks/medium/stuff_stocking/spawn
function fossil_frights:tasks/tracker/refresh
