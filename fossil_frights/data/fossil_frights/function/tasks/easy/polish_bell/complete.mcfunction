execute unless score $polish_bell_sel ff_task_state matches 1 run return 0
execute unless score $polish_bell_done ff_task_state matches 0 run return 0
execute if score $polish_bell_sel ff_task_state matches 1 if score $polish_bell_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "polish_bell"
execute if score $polish_bell_sel ff_task_state matches 1 if score $polish_bell_done ff_task_state matches 0 as @a[tag=ff_frights_feedback_viewer] at @s run playsound fossil-frights:task.polish_bell master @s ~ ~ ~ 0.9
execute if score $polish_bell_sel ff_task_state matches 1 if score $polish_bell_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $polish_bell_sel ff_task_state matches 1 if score $polish_bell_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $polish_bell_sel ff_task_state matches 1 if score $polish_bell_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"polish_bell"}] 1
execute if score $polish_bell_sel ff_task_state matches 1 run scoreboard players set $polish_bell_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
