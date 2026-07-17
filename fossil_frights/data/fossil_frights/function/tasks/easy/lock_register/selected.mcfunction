execute if score $lock_register_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $lock_register_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/lock_register
scoreboard players set $lock_register_sel ff_task_state 1
scoreboard players set $lock_register_done ff_task_state 0
function fossil_frights:tasks/easy/lock_register/set_open
function fossil_frights:tasks/easy/lock_register/spawn
function fossil_frights:tasks/tracker/refresh
