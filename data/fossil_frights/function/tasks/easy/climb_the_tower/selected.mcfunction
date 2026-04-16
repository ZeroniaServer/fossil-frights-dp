execute if score $climb_the_tower_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $climb_the_tower_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/climb_the_tower/selected_book
scoreboard players set $climb_the_tower_sel ff_task_state 1
scoreboard players set $climb_the_tower_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
