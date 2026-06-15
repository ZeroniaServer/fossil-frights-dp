execute if score $coffee_refill_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $coffee_refill_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/coffee_refill
scoreboard players set $coffee_refill_sel ff_task_state 1
scoreboard players set $coffee_refill_done ff_task_state 0
function fossil_frights:tasks/medium/coffee_refill/spawn
function fossil_frights:tasks/tracker/refresh
