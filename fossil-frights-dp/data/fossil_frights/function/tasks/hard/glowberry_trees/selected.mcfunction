execute if score $glowberry_trees_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $glowberry_trees_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/glowberry_trees
scoreboard players set $glowberry_trees_sel ff_task_state 1
scoreboard players set $glowberry_trees_done ff_task_state 0
scoreboard players set $glowberry_tree_1_watered ff_task_state 0
scoreboard players set $glowberry_tree_2_watered ff_task_state 0
scoreboard players set $glowberry_tree_1_pending ff_task_state 0
scoreboard players set $glowberry_tree_2_pending ff_task_state 0
tag @e[tag=ff_glowberry_tree_1_potion] remove ff_glowberry_tree_1_potion
tag @e[tag=ff_glowberry_tree_2_potion] remove ff_glowberry_tree_2_potion
function fossil_frights:tasks/tracker/refresh
