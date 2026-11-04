execute if score $relight_campfire_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $relight_campfire_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/relight_campfire
scoreboard players set $relight_campfire_sel ff_task_state 1
scoreboard players set $relight_campfire_done ff_task_state 0
setblock 59 85 73 minecraft:campfire[lit=false]
function fossil_frights:tasks/medium/relight_campfire/spawn
function fossil_frights:tasks/tracker/refresh
