execute unless score $heat_it_up_sel ff_task_state matches 1 run return 0
execute unless score $heat_it_up_done ff_task_state matches 0 run return 0
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "heat_it_up"
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 run setblock -24 101 12 minecraft:campfire
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 positioned -23.5 103.5 12.5 run particle minecraft:lava ~ ~ ~ 0.35 0.35 0.35 0.08 32 force
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 positioned -23.5 103.5 12.5 run particle minecraft:flame ~ ~ ~ 0.45 0.35 0.45 0.04 42 force
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 positioned -23.5 103.5 12.5 run playsound minecraft:item.bucket.empty_lava block @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.9 1.15
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 positioned -23.5 103.5 12.5 run playsound minecraft:block.lava.pop block @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.8 1.35
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 positioned -23.5 103.5 12.5 run playsound minecraft:block.fire.ambient block @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.7 1.55
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $heat_it_up_sel ff_task_state matches 1 if score $heat_it_up_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"heat_it_up"}] 1
execute if score $heat_it_up_sel ff_task_state matches 1 run scoreboard players set $heat_it_up_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
