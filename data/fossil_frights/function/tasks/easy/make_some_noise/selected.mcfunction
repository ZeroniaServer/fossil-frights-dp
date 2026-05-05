execute if score $make_some_noise_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $make_some_noise_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/make_some_noise/selected_book
scoreboard players set $make_some_noise_sel ff_task_state 1
scoreboard players set $make_some_noise_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
