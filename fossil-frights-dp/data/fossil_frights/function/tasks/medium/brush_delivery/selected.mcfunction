execute if score $brush_delivery_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $brush_delivery_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/brush_delivery
scoreboard players set $brush_delivery_sel ff_task_state 1
scoreboard players set $brush_delivery_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
