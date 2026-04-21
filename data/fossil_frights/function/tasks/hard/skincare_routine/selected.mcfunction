execute if score $skincare_routine_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $skincare_routine_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/skincare_routine/selected_book
scoreboard players set $skincare_routine_sel ff_task_state 1
scoreboard players set $skincare_routine_done ff_task_state 0
scoreboard players set $skincare_routine_pending ff_task_state 0
tag @e[tag=ff_skincare_routine_potion] remove ff_skincare_routine_potion
function fossil_frights:tasks/tracker/refresh
