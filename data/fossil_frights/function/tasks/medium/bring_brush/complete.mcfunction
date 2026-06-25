execute unless score $bring_brush_sel ff_task_state matches 1 run return 0
execute unless score $bring_brush_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "bring_brush"
particle minecraft:block{block_state:{Name:"minecraft:sand"}} ~ ~0.08 ~ 0.22 0.08 0.22 0.06 18 force
particle minecraft:campfire_cosy_smoke ~ ~0.15 ~ 0.0 0.0 0.0 0.0 1 force
playsound minecraft:item.brush.brushing.sand block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.9 1.1
data merge entity @s {PickupDelay:32767,Age:5800}
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"bring_brush"}] 1
scoreboard players set $bring_brush_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
