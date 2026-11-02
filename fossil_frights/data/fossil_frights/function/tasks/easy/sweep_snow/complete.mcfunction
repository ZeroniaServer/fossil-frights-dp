execute unless score $sweep_snow_sel ff_task_state matches 1 run return 0
execute unless score $sweep_snow_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "sweep_snow"
execute at @s run playsound fossil_frights:task.sweep_popcorn master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
function fossil_frights:tasks/easy/sweep_snow/cleanup
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"sweep_snow"}}] 1
scoreboard players set $sweep_snow_done ff_task_state 1
schedule function fossil_frights:tasks/easy/sweep_snow/remove_1 5t replace
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
