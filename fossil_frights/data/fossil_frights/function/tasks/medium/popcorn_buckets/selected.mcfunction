execute if score $popcorn_buckets_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $popcorn_buckets_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/popcorn_buckets
scoreboard players set $popcorn_buckets_sel ff_task_state 1
scoreboard players set $popcorn_buckets_done ff_task_state 0
function fossil_frights:tasks/medium/popcorn_buckets/spawn
function fossil_frights:animations/tasks/medium/popcorn_buckets/popcorn_machine/default
function fossil_frights:tasks/tracker/refresh
