execute if score $swat_flies_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $swat_flies_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/swat_flies
scoreboard players set $swat_flies_sel ff_task_state 1
scoreboard players set $swat_flies_done ff_task_state 0
function fossil_frights:tasks/easy/swat_flies/spawn
function fossil_frights:tasks/easy/swat_flies/buzz
function fossil_frights:tasks/tracker/refresh
