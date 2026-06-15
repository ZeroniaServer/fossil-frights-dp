execute if score $bring_brush_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $bring_brush_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/bring_brush
scoreboard players set $bring_brush_sel ff_task_state 1
scoreboard players set $bring_brush_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
