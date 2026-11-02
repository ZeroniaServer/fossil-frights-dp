execute if score $plesio_hat_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $plesio_hat_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/plesio_hat
scoreboard players set $plesio_hat_sel ff_task_state 1
scoreboard players set $plesio_hat_done ff_task_state 0
function fossil_frights:tasks/easy/plesio_hat/set_hat_hidden
function fossil_frights:tasks/easy/plesio_hat/set_water_visible
function fossil_frights:tasks/easy/plesio_hat/spawn
function fossil_frights:tasks/tracker/refresh
