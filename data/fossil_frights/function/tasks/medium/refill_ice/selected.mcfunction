execute if score $refill_ice_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $refill_ice_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/refill_ice
scoreboard players set $refill_ice_sel ff_task_state 1
scoreboard players set $refill_ice_done ff_task_state 0
function fossil_frights:tasks/medium/refill_ice/spawn
function fossil_frights:tasks/tracker/refresh
