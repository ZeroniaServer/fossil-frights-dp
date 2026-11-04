execute unless score $relight_campfire_sel ff_task_state matches 1 run return 0
execute unless score $relight_campfire_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "relight_campfire"
setblock 59 85 73 minecraft:campfire[lit=true]
execute positioned 59.5 85.5 73.5 run playsound minecraft:item.firecharge.use master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 1.0 1.0
execute positioned 59.5 85.5 73.5 run particle minecraft:flame ~ ~0.35 ~ 0.2 0.25 0.2 0.02 14 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"relight_campfire"}}] 1
scoreboard players set $relight_campfire_done ff_task_state 1
function fossil_frights:tasks/medium/relight_campfire/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
