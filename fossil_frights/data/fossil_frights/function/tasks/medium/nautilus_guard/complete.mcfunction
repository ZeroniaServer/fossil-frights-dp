execute unless score $nautilus_guard_sel ff_task_state matches 1 run return 0
execute unless score $nautilus_guard_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "nautilus_guard"
playsound fossil-frights:task.nautilus_guard master @a[tag=ff_frights_feedback_viewer,distance=..28] ~ ~ ~ 0.9 1.0
effect give @s minecraft:mining_fatigue 3 0 true
playsound minecraft:entity.elder_guardian.curse hostile @a[tag=ff_frights_feedback_viewer,distance=..28] ~ ~ ~ 1 1
playsound minecraft:entity.elder_guardian.ambient hostile @a[tag=ff_frights_feedback_viewer,distance=..28] ~ ~ ~ 0.8 0.8
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"nautilus_guard"}] 1
scoreboard players set $nautilus_guard_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
