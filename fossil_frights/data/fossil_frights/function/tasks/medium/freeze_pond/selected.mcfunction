execute if score $freeze_pond_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $freeze_pond_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/freeze_pond
execute if score $freeze_pond_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/freeze_pond/set_water
scoreboard players set $freeze_pond_sel ff_task_state 1
scoreboard players set $freeze_pond_done ff_task_state 0
execute as @e[type=minecraft:item_display,tag=ff_penguin_up] run data modify entity @s view_range set value 2
execute as @e[type=minecraft:item_display,tag=ff_penguin_down] run data modify entity @s view_range set value 0
tp @e[type=minecraft:item_display,tag=ff_penguin_down] 51.25 85.0 78.25
function fossil_frights:tasks/tracker/refresh
