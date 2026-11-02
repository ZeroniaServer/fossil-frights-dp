execute unless score $kiss_t_rex_sel ff_task_state matches 1 run return 0
execute unless score $kiss_t_rex_done ff_task_state matches 0 run return 0
execute at @s run playsound fossil_frights:task.kiss_t_rex master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
data modify storage fossil_frights:tasks complete.task_name set value "kiss_t_rex"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"kiss_t_rex"}}] 1
scoreboard players set $kiss_t_rex_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
