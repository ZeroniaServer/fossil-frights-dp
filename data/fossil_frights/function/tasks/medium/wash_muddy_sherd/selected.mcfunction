execute if score $wash_muddy_sherd_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $wash_muddy_sherd_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/wash_muddy_sherd/selected_book
scoreboard players set $wash_muddy_sherd_sel ff_task_state 1
scoreboard players set $wash_muddy_sherd_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
