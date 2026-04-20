execute unless score $water_temp_sel ff_task_state matches 1 run return 0
execute unless score $water_temp_done ff_task_state matches 0 run return 0
execute if score $water_temp_sel ff_task_state matches 1 if score $water_temp_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Water Temp"
execute if score $water_temp_sel ff_task_state matches 1 if score $water_temp_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.splash master @s ~ ~ ~ 0.9 1.2
execute if score $water_temp_sel ff_task_state matches 1 if score $water_temp_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $water_temp_sel ff_task_state matches 1 if score $water_temp_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $water_temp_sel ff_task_state matches 1 if score $water_temp_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"water_temp"}] 1
execute if score $water_temp_sel ff_task_state matches 1 run scoreboard players set $water_temp_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
