execute if score $defrost_timeline_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $defrost_timeline_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/defrost_timeline
scoreboard players set $defrost_timeline_sel ff_task_state 1
scoreboard players set $defrost_timeline_done ff_task_state 0
scoreboard players set $defrost_timeline_permian ff_task_state 0
scoreboard players set $defrost_timeline_hadean ff_task_state 0
function fossil_frights:tasks/tracker/refresh
