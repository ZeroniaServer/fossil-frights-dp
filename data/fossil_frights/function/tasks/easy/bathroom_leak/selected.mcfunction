execute if score $bathroom_leak_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $bathroom_leak_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/bathroom_leak
scoreboard players set $bathroom_leak_sel ff_task_state 1
scoreboard players set $bathroom_leak_done ff_task_state 0
setblock -18 94 10 minecraft:water
function fossil_frights:tasks/tracker/refresh
