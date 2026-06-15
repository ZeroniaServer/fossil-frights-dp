execute if score $feed_parrot_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $feed_parrot_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/feed_parrot
execute if score $feed_parrot_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/feed_parrot/cleanup
scoreboard players set $feed_parrot_sel ff_task_state 1
scoreboard players set $feed_parrot_done ff_task_state 0
function fossil_frights:tasks/medium/feed_parrot/spawn
function fossil_frights:tasks/tracker/refresh
