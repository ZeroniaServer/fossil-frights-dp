execute if score $ice_sculpture_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $ice_sculpture_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/ice_sculpture
scoreboard players set $ice_sculpture_sel ff_task_state 1
scoreboard players set $ice_sculpture_done ff_task_state 0
scoreboard players set $ice_sculpture_moved ff_task_state 0
function fossil_frights:tasks/hard/ice_sculpture/cleanup
tp @e[type=minecraft:item_display,tag=ff_ice_sculpture] 68.5 82.0 46.5
setblock 68 83 46 minecraft:air
execute positioned 68.5 82.0 46.5 run function fossil_frights:tasks/hard/ice_sculpture/spawn
function fossil_frights:tasks/tracker/refresh
