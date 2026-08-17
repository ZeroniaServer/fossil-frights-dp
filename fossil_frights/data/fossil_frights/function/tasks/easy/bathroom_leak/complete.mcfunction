execute unless score $bathroom_leak_sel ff_task_state matches 1 run return 0
execute unless score $bathroom_leak_done ff_task_state matches 0 run return 0
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 run setblock -18 94 10 minecraft:air
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "bathroom_leak"
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 as @a[team=ff_guard] at @s run playsound fossil-frights:task.bathroom_leak master @s ~ ~ ~ 0.9 1.0
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 as @a[team=ff_guard] at @s run playsound minecraft:entity.generic.splash master @s ~ ~ ~ 0.9 1.2
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $bathroom_leak_sel ff_task_state matches 1 if score $bathroom_leak_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"bathroom_leak"}] 1
execute if score $bathroom_leak_sel ff_task_state matches 1 run scoreboard players set $bathroom_leak_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
