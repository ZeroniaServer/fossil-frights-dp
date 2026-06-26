execute if score $defrost_freezer_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $defrost_freezer_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/defrost_freezer
scoreboard players set $defrost_freezer_sel ff_task_state 1
scoreboard players set $defrost_freezer_done ff_task_state 0
scoreboard players set $defrost_freezer_compass_stage ff_compass 0
setblock -13 73 41 minecraft:lever[face=wall,facing=west,powered=false]
function fossil_frights:tasks/tracker/refresh
