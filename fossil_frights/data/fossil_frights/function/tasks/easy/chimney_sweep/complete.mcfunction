execute unless score $chimney_sweep_sel ff_task_state matches 1 run return 0
execute unless score $chimney_sweep_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "chimney_sweep"
execute at @s run playsound fossil_frights:task.sweep_popcorn master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
function fossil_frights:tasks/easy/chimney_sweep/cleanup
function fossil_frights:tasks/easy/chimney_sweep/set_bricks
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"chimney_sweep"}}] 1
scoreboard players set $chimney_sweep_done ff_task_state 1
schedule function fossil_frights:tasks/easy/chimney_sweep/clean_1 5t replace
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
