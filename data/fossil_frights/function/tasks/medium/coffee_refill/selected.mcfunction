execute if score $coffee_refill_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $coffee_refill_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/coffee_refill/selected_book
scoreboard players set $coffee_refill_sel ff_task_state 1
scoreboard players set $coffee_refill_done ff_task_state 0
function fossil_frights:tasks/medium/coffee_refill/spawn
function fossil_frights:tasks/tracker/refresh
