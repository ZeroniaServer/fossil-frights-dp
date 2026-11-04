execute unless score $paint_candy_cane_sel ff_task_state matches 1 run return 0
execute unless score $paint_candy_cane_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "paint_candy_cane"
execute as @e[type=minecraft:item_display,tag=ff_paint_candy_cane] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/task/candycane_pink"}}
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"paint_candy_cane"}}] 1
scoreboard players set $paint_candy_cane_done ff_task_state 1
function fossil_frights:tasks/medium/paint_candy_cane/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
