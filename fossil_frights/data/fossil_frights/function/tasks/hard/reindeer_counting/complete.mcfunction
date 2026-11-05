execute unless score $reindeer_counting_sel ff_task_state matches 1 run return 0
execute unless score $reindeer_counting_done ff_task_state matches 0 run return 0
kill @e[type=minecraft:interaction,tag=ff_reindeer_counting_click]
data modify storage fossil_frights:tasks complete.task_name set value "reindeer_counting"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"reindeer_counting"}}] 1
scoreboard players set $reindeer_counting_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
