execute unless score $ice_top_up_sel ff_task_state matches 1 run return 0
execute unless score $ice_top_up_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "ice_top_up"
playsound minecraft:block.glass.break block @a[tag=ff_frights_feedback_viewer,distance=..18] 2.5 69.5 53.5 0.8 1.7
particle minecraft:snowflake 2.5 69.5 53.5 0.25 0.25 0.25 0.02 12 force
execute as @e[type=#fossil_frights:display_entities,tag=ff_ice_top_up] run data modify entity @s view_range set value 1
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"ice_top_up"}}] 1
scoreboard players set $ice_top_up_done ff_task_state 1
execute if entity @s[type=minecraft:item] run function fossil_frights:items/util/return_all_but_one_to_thrower
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
