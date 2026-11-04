execute if score $decorate_tree_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $decorate_tree_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/decorate_tree
scoreboard players set $decorate_tree_sel ff_task_state 1
scoreboard players set $decorate_tree_done ff_task_state 0
function fossil_frights:tasks/hard/decorate_tree/spawn
execute as @e[type=#fossil_frights:display_entities,tag=ff_star] run data modify entity @s view_range set value 0
function fossil_frights:tasks/tracker/refresh
