execute unless score $holy_grail_sel ff_task_state matches 1 run return 0
execute unless score $holy_grail_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "holy_grail"
playsound fossil-frights:task.holy_grail master @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.9 1.0
function fossil_frights:tasks/hard/holy_grail/effects
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"holy_grail"}] 1
scoreboard players set $holy_grail_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
