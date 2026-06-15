execute if score $cool_it_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $cool_it_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/cool_it
execute if score $cool_it_sel ff_task_state matches 0 run setblock 23 103 9 minecraft:water
execute if score $cool_it_sel ff_task_state matches 0 run setblock 24 103 9 minecraft:water
scoreboard players set $cool_it_sel ff_task_state 1
scoreboard players set $cool_it_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
