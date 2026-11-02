execute unless score $open_clam_sel ff_task_state matches 1 run return 0
execute unless score $open_clam_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "open_clam"
execute at @s run playsound minecraft:entity.shulker.open master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.0
function fossil_frights:tasks/easy/open_clam/cleanup
function fossil_frights:tasks/easy/open_clam/set_open
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
execute if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"open_clam"}}] 1
scoreboard players set $open_clam_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
