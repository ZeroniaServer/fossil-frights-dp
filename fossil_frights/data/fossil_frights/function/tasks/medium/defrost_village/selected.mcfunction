execute if score $defrost_village_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $defrost_village_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/defrost_village
scoreboard players set $defrost_village_sel ff_task_state 1
scoreboard players set $defrost_village_done ff_task_state 0
execute as @e[type=minecraft:item_display,tag=ff_defrost_village] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/village/village_icy"}}
function fossil_frights:tasks/medium/defrost_village/spawn
function fossil_frights:tasks/tracker/refresh
