execute unless score $infestation_sel ff_task_state matches 1 run return 0
execute unless score $infestation_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "infestation"
function fossil_frights:tasks/hard/infestation/cleanup
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"infestation"}}] 1
scoreboard players set $infestation_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
