execute if score $deforst_freezer_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $deforst_freezer_sel ff_task_state matches 0 run function fossil_frights:tasks/hard/deforst_freezer/selected_book
scoreboard players set $deforst_freezer_sel ff_task_state 1
scoreboard players set $deforst_freezer_done ff_task_state 0
setblock -13 73 41 minecraft:lever[face=wall,facing=west,powered=false]
function fossil_frights:tasks/tracker/refresh
