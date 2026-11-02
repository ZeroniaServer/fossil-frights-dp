execute unless score $plesio_hat_sel ff_task_state matches 1 run return 0
execute unless score $plesio_hat_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "plesio_hat"
execute at @s run particle minecraft:splash 10.8 81.0 83.4 0.4 0.4 0.4 1 20 force
execute at @s run playsound minecraft:entity.axolotl.splash master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
function fossil_frights:tasks/easy/plesio_hat/cleanup
function fossil_frights:tasks/easy/plesio_hat/set_hat_visible
function fossil_frights:tasks/easy/plesio_hat/set_water_hidden
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"plesio_hat"}}] 1
scoreboard players set $plesio_hat_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
