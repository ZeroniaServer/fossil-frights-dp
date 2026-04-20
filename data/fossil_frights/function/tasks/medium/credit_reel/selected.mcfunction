execute if score $credit_reel_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $credit_reel_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/credit_reel/selected_book
scoreboard players set $credit_reel_sel ff_task_state 1
scoreboard players set $credit_reel_done ff_task_state 0
function fossil_frights:tasks/medium/credit_reel/spawn
function fossil_frights:tasks/tracker/refresh
