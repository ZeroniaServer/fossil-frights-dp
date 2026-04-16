execute if score $check_ankylo_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $check_ankylo_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/check_ankylo/selected_book
scoreboard players set $check_ankylo_sel ff_task_state 1
scoreboard players set $check_ankylo_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
