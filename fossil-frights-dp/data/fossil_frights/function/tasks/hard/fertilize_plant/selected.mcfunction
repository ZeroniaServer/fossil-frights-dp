execute if score $fertilize_plant_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $fertilize_plant_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/fertilize_plant
function fossil_frights:tasks/hard/fertilize_plant/reset
execute store result score $fertilize_plant_pick ff_task_state run random value 1..7
function fossil_frights:tasks/hard/fertilize_plant/apply_selected
function fossil_frights:tasks/hard/fertilize_plant/spawn_selected
scoreboard players set $fertilize_plant_sel ff_task_state 1
scoreboard players set $fertilize_plant_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
