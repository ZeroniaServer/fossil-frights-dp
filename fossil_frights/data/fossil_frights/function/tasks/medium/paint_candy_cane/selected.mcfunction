execute if score $paint_candy_cane_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $paint_candy_cane_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/paint_candy_cane
scoreboard players set $paint_candy_cane_sel ff_task_state 1
scoreboard players set $paint_candy_cane_done ff_task_state 0
execute as @e[type=minecraft:item_display,tag=ff_paint_candy_cane] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/task/candycane_blank"}}
function fossil_frights:tasks/medium/paint_candy_cane/spawn
function fossil_frights:tasks/tracker/refresh
