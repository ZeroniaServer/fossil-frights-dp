execute if score $dig_sand_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $dig_sand_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/dig_sand/selected_book
scoreboard players set $dig_sand_sel ff_task_state 1
scoreboard players set $dig_sand_done ff_task_state 0
function fossil_frights:tasks/easy/dig_sand/spawn
function fossil_frights:tasks/tracker/refresh
