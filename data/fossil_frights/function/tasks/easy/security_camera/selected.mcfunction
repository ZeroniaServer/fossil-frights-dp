execute if score $security_camera_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $security_camera_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/security_camera/selected_book
scoreboard players set $security_camera_sel ff_task_state 1
scoreboard players set $security_camera_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
