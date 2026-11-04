execute unless score $stuff_stocking_sel ff_task_state matches 1 run return 0
execute unless score $stuff_stocking_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "stuff_stocking"
playsound minecraft:block.composter.fill_success master @a[tag=ff_frights_feedback_viewer,distance=..18] 26 82.76 26.88 0.9 1.0
particle minecraft:ash 26.00 82.76 26.88 0.1 0.1 0.1 1 50 force
function fossil_frights:tasks/medium/stuff_stocking/cleanup
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"stuff_stocking"}}] 1
scoreboard players set $stuff_stocking_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
