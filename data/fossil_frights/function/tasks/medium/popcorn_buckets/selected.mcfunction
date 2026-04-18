execute if score $popcorn_buckets_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
function fossil_frights:tasks/medium/popcorn_buckets/ensure_book
scoreboard players set $popcorn_buckets_sel ff_task_state 1
scoreboard players set $popcorn_buckets_done ff_task_state 0
function fossil_frights:tasks/medium/popcorn_buckets/spawn
function fossil_frights:tasks/tracker/refresh
