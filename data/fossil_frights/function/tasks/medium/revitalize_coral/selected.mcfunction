execute if score $revitalize_coral_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $revitalize_coral_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/revitalize_coral/selected_book
scoreboard players set $revitalize_coral_sel ff_task_state 1
scoreboard players set $revitalize_coral_done ff_task_state 0
function fossil_frights:tasks/medium/revitalize_coral/spawn
function fossil_frights:tasks/tracker/refresh
