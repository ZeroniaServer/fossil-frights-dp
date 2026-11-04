execute unless score $defrost_timeline_sel ff_task_state matches 1 run return 0
execute unless score $defrost_timeline_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "defrost_timeline"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"defrost_timeline"}}] 1
scoreboard players set $defrost_timeline_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
