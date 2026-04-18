execute if score $replenish_soap_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $replenish_soap_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/replenish_soap/selected_book
execute if score $replenish_soap_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/replenish_soap/cleanup
scoreboard players set $replenish_soap_sel ff_task_state 1
scoreboard players set $replenish_soap_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
