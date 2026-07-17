execute unless score $static_buildup_sel ff_task_state matches 1 run return 0
execute unless score $static_buildup_done ff_task_state matches 0 run return 0
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "static_buildup"
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 run effect give @a[team=ff_guard] minecraft:poison 1 0 true
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 run effect give @a[team=ff_guard] minecraft:glowing 3 0 true
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 as @a[team=ff_guard] at @s run particle minecraft:end_rod ~ ~1 ~ 0.35 0.6 0.35 0.05 45 force
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 as @a[team=ff_guard] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.7 1.8
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $static_buildup_sel ff_task_state matches 1 if score $static_buildup_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"static_buildup"}] 1
execute if score $static_buildup_sel ff_task_state matches 1 run scoreboard players set $static_buildup_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
