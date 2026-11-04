execute if score $feed_mammoth_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $feed_mammoth_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/feed_mammoth
scoreboard players set $feed_mammoth_sel ff_task_state 1
scoreboard players set $feed_mammoth_done ff_task_state 0
execute as @e[type=#fossil_frights:display_entities,tag=ff_feed_mammoth] run data modify entity @s view_range set value 0
function fossil_frights:tasks/medium/feed_mammoth/spawn
function fossil_frights:tasks/tracker/refresh
