execute if score $build_snowman_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $build_snowman_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/build_snowman
scoreboard players set $build_snowman_sel ff_task_state 1
scoreboard players set $build_snowman_done ff_task_state 0
setblock 45 82 33 minecraft:air strict
function fossil_frights:tasks/medium/build_snowman/spawn
function fossil_frights:tasks/tracker/refresh
