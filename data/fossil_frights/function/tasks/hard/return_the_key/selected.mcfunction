execute if score $return_the_key_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $return_the_key_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/return_the_key
scoreboard players set $return_the_key_sel ff_task_state 1
scoreboard players set $return_the_key_done ff_task_state 0
function fossil_frights:tasks/hard/return_the_key/setup_roots
function fossil_frights:tasks/hard/return_the_key/spawn
function fossil_frights:tasks/tracker/refresh
