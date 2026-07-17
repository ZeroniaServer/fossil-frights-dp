execute if score $water_crops_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $water_crops_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/water_crops
execute if score $water_crops_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/water_crops/set_age_1
scoreboard players set $water_crops_sel ff_task_state 1
scoreboard players set $water_crops_done ff_task_state 0
scoreboard players set $water_crops_pending ff_task_state 0
tag @e[tag=ff_water_crops_potion] remove ff_water_crops_potion
function fossil_frights:tasks/tracker/refresh
