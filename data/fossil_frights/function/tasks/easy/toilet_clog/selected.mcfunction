execute if score $toilet_clog_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $toilet_clog_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/toilet_clog/selected_book
scoreboard players set $toilet_clog_sel ff_task_state 1
scoreboard players set $toilet_clog_done ff_task_state 0
setblock 27 80 11 minecraft:water
function fossil_frights:tasks/tracker/refresh
