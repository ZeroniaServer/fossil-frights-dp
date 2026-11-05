execute if score $infestation_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $infestation_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/infestation
scoreboard players set $infestation_sel ff_task_state 1
scoreboard players set $infestation_done ff_task_state 0
function fossil_frights:tasks/hard/infestation/cleanup
scoreboard players set $infestation_answer ff_task_state 1
function fossil_frights:tasks/hard/infestation/update_display
function fossil_frights:tasks/hard/infestation/spawn
function fossil_frights:tasks/tracker/refresh
