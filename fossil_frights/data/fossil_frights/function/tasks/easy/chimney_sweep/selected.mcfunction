execute if score $chimney_sweep_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $chimney_sweep_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/chimney_sweep
scoreboard players set $chimney_sweep_sel ff_task_state 1
scoreboard players set $chimney_sweep_done ff_task_state 0
function fossil_frights:tasks/easy/chimney_sweep/apply_coal
function fossil_frights:tasks/easy/chimney_sweep/spawn
function fossil_frights:tasks/tracker/refresh
