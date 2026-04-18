execute if score $smelly_toilet_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $smelly_toilet_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/smelly_toilet/selected_book
scoreboard players set $smelly_toilet_sel ff_task_state 1
scoreboard players set $smelly_toilet_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
