execute unless score $pig_wrangler_sel ff_task_state matches 1 run return 0
execute unless score $pig_wrangler_done ff_task_state matches 0 run return 0
execute unless score $pig_wrangler_in_pen ff_task_state matches 1 run return 0
execute unless score $pig_wrangler_fed ff_task_state matches 1 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "pig_wrangler"
execute positioned 71.5 80.5 41.5 run playsound minecraft:entity.pig.ambient block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 1.0 1.1
execute positioned 71.5 80.5 41.5 run playsound minecraft:entity.player.levelup master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.6 1.5
execute positioned 71.5 80.5 41.5 run particle minecraft:happy_villager ~ ~0.6 ~ 0.65 0.45 3.8 0.05 20 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"pig_wrangler"}] 1
scoreboard players set $pig_wrangler_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
