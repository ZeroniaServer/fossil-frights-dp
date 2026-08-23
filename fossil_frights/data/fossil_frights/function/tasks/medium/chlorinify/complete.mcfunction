execute unless score $chlorinify_sel ff_task_state matches 1 run return 0
execute unless score $chlorinify_done ff_task_state matches 0 run return 0
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "chlorinify"
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 at @s run particle minecraft:poof ~ ~0.15 ~ 0.35 0.25 0.35 0.04 32 force
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 at @s run particle minecraft:splash ~ ~0.1 ~ 0.45 0.2 0.45 0.08 36 force
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.splash master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 0.9 1.2
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $chlorinify_sel ff_task_state matches 1 if score $chlorinify_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"chlorinify"}] 1
execute if score $chlorinify_sel ff_task_state matches 1 run scoreboard players set $chlorinify_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
