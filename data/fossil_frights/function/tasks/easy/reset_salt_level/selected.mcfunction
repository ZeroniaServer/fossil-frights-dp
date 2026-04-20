execute if score $reset_salt_level_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $reset_salt_level_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/reset_salt_level/selected_book
scoreboard players set $reset_salt_level_sel ff_task_state 1
scoreboard players set $reset_salt_level_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
