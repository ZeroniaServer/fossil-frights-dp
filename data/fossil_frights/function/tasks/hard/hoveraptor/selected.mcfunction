execute if score $hoveraptor_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $hoveraptor_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/hoveraptor/selected_book
scoreboard players set $hoveraptor_sel ff_task_state 1
scoreboard players set $hoveraptor_done ff_task_state 0
function fossil_frights:tasks/hard/hoveraptor/set_frame_base
function fossil_frights:tasks/hard/hoveraptor/spawn
function fossil_frights:tasks/tracker/refresh
