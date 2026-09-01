execute unless score $brush_delivery_sel ff_task_state matches 1 run return 0
execute unless score $brush_delivery_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "brush_delivery"
particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~0.08 ~ 0.22 0.08 0.22 0.06 18 force
particle minecraft:campfire_cosy_smoke ~ ~0.15 ~ 0.0 0.0 0.0 0.0 1 force
playsound minecraft:item.brush.brushing.sand block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.1
function fossil_frights:items/util/return_all_but_one_to_thrower
data merge entity @s {PickupDelay:32767,Age:5800}
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"brush_delivery"}] 1
scoreboard players set $brush_delivery_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
