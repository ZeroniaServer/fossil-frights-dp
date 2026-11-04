execute unless score $freeze_pond_sel ff_task_state matches 1 run return 0
execute unless score $freeze_pond_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "freeze_pond"
execute as @e[type=minecraft:item_display,tag=ff_penguin_up] run data modify entity @s view_range set value 0
execute as @e[type=minecraft:item_display,tag=ff_penguin_down] run data modify entity @s view_range set value 2
execute if entity @s[type=minecraft:item] at @s run particle minecraft:poof ~ ~0.15 ~ 0.35 0.25 0.35 0.04 24 force
execute if entity @s[type=minecraft:item] at @s run particle minecraft:snowflake ~ ~0.15 ~ 0.4 0.3 0.4 0.02 40 force
execute positioned 53.5 84 79.5 run playsound fossil_frights:task.cool_it master @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.9 1.0
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"freeze_pond"}}] 1
scoreboard players set $freeze_pond_done ff_task_state 1
function fossil_frights:tasks/medium/freeze_pond/cleanup
schedule function fossil_frights:tasks/medium/freeze_pond/penguin_1 10t
schedule function fossil_frights:tasks/medium/freeze_pond/penguin_2 40t
schedule function fossil_frights:tasks/medium/freeze_pond/penguin_3 70t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_1 4t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_2 8t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_3 12t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_4 16t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_5 20t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_6 24t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_7 28t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_8 32t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_9 36t
schedule function fossil_frights:tasks/medium/freeze_pond/freeze_10 40t
execute if entity @s[type=minecraft:item] run function fossil_frights:items/util/return_all_but_one_to_thrower
kill @s[type=minecraft:item]
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
