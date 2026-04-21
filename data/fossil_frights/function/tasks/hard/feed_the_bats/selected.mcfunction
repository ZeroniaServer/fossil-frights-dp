execute if score $feed_the_bats_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $feed_the_bats_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/feed_the_bats/selected_book
scoreboard players set $feed_the_bats_sel ff_task_state 1
scoreboard players set $feed_the_bats_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
