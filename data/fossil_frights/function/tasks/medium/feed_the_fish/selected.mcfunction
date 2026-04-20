execute if score $feed_the_fish_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
function fossil_frights:tasks/medium/feed_the_fish/ensure_book
scoreboard players set $feed_the_fish_sel ff_task_state 1
scoreboard players set $feed_the_fish_done ff_task_state 0
function fossil_frights:tasks/medium/feed_the_fish/spawn
function fossil_frights:tasks/tracker/refresh
