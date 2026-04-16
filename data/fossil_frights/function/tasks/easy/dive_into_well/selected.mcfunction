execute if score $dive_into_well_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $dive_into_well_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/dive_into_well/selected_book
scoreboard players set $dive_into_well_sel ff_task_state 1
scoreboard players set $dive_into_well_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
