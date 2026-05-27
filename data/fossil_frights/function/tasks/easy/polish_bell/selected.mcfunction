execute if score $polish_bell_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $polish_bell_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/polish_bell/selected_book
scoreboard players set $polish_bell_sel ff_task_state 1
scoreboard players set $polish_bell_done ff_task_state 0
function fossil_frights:tasks/easy/polish_bell/spawn
function fossil_frights:tasks/tracker/refresh
