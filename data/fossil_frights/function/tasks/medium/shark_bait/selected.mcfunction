execute if score $shark_bait_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $shark_bait_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/shark_bait/selected_book
scoreboard players set $shark_bait_sel ff_task_state 1
scoreboard players set $shark_bait_done ff_task_state 0
function fossil_frights:tasks/medium/shark_bait/spawn
function fossil_frights:tasks/tracker/refresh
