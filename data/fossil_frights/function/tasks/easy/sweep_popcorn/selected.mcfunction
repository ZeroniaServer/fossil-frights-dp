execute if score $sweep_popcorn_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $sweep_popcorn_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/sweep_popcorn
scoreboard players set $sweep_popcorn_sel ff_task_state 1
scoreboard players set $sweep_popcorn_done ff_task_state 0
function fossil_frights:tasks/easy/sweep_popcorn/spawn
function fossil_frights:tasks/tracker/refresh
