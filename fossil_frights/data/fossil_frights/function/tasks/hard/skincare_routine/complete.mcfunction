execute unless score $skincare_routine_sel ff_task_state matches 1 run return 0
execute unless score $skincare_routine_done ff_task_state matches 0 run return 0
scoreboard players set $skincare_routine_pending ff_task_state 0
tag @e[tag=ff_skincare_routine_potion] remove ff_skincare_routine_potion
data modify storage fossil_frights:tasks complete.task_name set value "skincare_routine"
execute positioned 0 107 16 run playsound minecraft:entity.generic.splash block @a[tag=ff_frights_feedback_viewer,distance=..22] ~ ~ ~ 0.85 1.15
execute positioned 0 107 16 run playsound minecraft:item.bucket.empty block @a[tag=ff_frights_feedback_viewer,distance=..22] ~ ~ ~ 0.55 1.6
execute positioned 0 107 16 run particle minecraft:splash ~ ~ ~ 0.65 0.45 0.65 0.08 40 force
execute positioned 0 107 16 run particle minecraft:bubble ~ ~ ~ 0.55 0.55 0.55 0.04 22 force
execute positioned 0 107 16 run particle minecraft:fishing ~ ~ ~ 0.65 0.35 0.65 0.08 18 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"skincare_routine"}] 1
scoreboard players set $skincare_routine_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
