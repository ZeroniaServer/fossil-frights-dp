execute unless score $return_the_key_sel ff_task_state matches 1 run return 0
execute unless score $return_the_key_done ff_task_state matches 0 run return 0
execute unless entity @s[team=ff_guard] run return 0
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "return_the_key"
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 positioned -12.5 70.8 48.5 run playsound fossil-frights:task.return_the_key master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 0.9 1.0
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 positioned -12.5 70.8 48.5 run playsound minecraft:block.iron_door.open master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 0.8 0.7
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 positioned -12.5 70.8 48.5 run playsound minecraft:block.note_block.chime master @a[tag=ff_frights_feedback_viewer,distance=..16] ~ ~ ~ 0.8 0.6
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 positioned -12.5 70.8 48.5 run particle minecraft:glow ~ ~ ~ 0.4 0.45 0.4 0.02 18 force
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 run function fossil_frights:tasks/hard/return_the_key/cleanup
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $return_the_key_sel ff_task_state matches 1 if score $return_the_key_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"return_the_key"}] 1
execute if score $return_the_key_sel ff_task_state matches 1 run scoreboard players set $return_the_key_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
