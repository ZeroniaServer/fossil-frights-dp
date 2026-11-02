execute unless score $smell_gingerbread_sel ff_task_state matches 1 run return 0
execute unless score $smell_gingerbread_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "smell_gingerbread"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"smell_gingerbread"}}] 1
scoreboard players set $smell_gingerbread_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
