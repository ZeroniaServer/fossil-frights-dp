execute unless score $revitalize_coral_sel ff_task_state matches 1 run return 0
execute unless score $revitalize_coral_done ff_task_state matches 0 run return 0
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "revitalize_coral"
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 positioned -18.5 80.5 67.5 run particle minecraft:dust{color:[1.0,0.3,0.72],scale:1.0} ~ ~0.25 ~ 0.45 0.25 0.45 0.01 34 force
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 positioned -18.5 80.5 67.5 run particle minecraft:cherry_leaves ~ ~0.35 ~ 0.35 0.2 0.35 0.01 16 force
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 positioned -18.5 80.5 67.5 run playsound minecraft:block.flowering_azalea.place block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.65 1.45
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 positioned -18.5 80.5 67.5 run playsound minecraft:block.coral_block.place block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.75 1.25
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $revitalize_coral_sel ff_task_state matches 1 if score $revitalize_coral_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"revitalize_coral"}] 1
execute if score $revitalize_coral_sel ff_task_state matches 1 run scoreboard players set $revitalize_coral_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/revitalize_coral/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
