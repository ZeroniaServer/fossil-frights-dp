execute if score $return_lost_egg_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $return_lost_egg_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/return_lost_egg
scoreboard players set $return_lost_egg_sel ff_task_state 1
scoreboard players set $return_lost_egg_done ff_task_state 0
scoreboard players set $return_lost_egg_picked ff_task_state 0
function fossil_frights:tasks/hard/return_lost_egg/spawn
execute as @e[type=#fossil_frights:display_entities,tag=ff_lost_egg] run data modify entity @s view_range set value 1
execute as @e[type=#fossil_frights:display_entities,tag=ff_found_egg] run data modify entity @s view_range set value 0
function fossil_frights:tasks/tracker/refresh
