execute unless score $defrost_village_sel ff_task_state matches 1 run return 0
execute unless score $defrost_village_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "defrost_village"
execute as @e[type=minecraft:item_display,tag=ff_defrost_village] run item modify entity @s contents {type:"minecraft:set_components",components:{"minecraft:item_model":"fossil_frights:display/frightmas/village/village"}}
execute positioned 0 96 55 run playsound minecraft:block.fire.extinguish block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 1.0 0.8
execute positioned 0 96 55 run particle minecraft:snowflake ~ ~ ~ 6 1.5 2 0.03 100 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"defrost_village"}}] 1
scoreboard players set $defrost_village_done ff_task_state 1
function fossil_frights:tasks/medium/defrost_village/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
