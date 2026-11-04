execute unless score $cocoa_run_sel ff_task_state matches 1 run return 0
execute unless score $cocoa_run_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "cocoa_run"
execute positioned -33 81 80 run playsound minecraft:entity.generic.drink master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
execute as @e[type=#fossil_frights:display_entities,tag=ff_cocoa_run] run data modify entity @s view_range set value 1
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"cocoa_run"}}] 1
scoreboard players set $cocoa_run_done ff_task_state 1
function fossil_frights:tasks/medium/cocoa_run/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
