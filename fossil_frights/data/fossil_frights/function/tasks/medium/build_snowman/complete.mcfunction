execute unless score $build_snowman_sel ff_task_state matches 1 run return 0
execute unless score $build_snowman_done ff_task_state matches 0 run return 0
scoreboard players set $build_snowman_done ff_task_state 1
data modify storage fossil_frights:tasks complete.task_name set value "build_snowman"
setblock 45 82 33 minecraft:carved_pumpkin[facing=south] strict
execute positioned 45.5 82.5 33.5 run playsound minecraft:block.pumpkin.place master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 1.0 1.0
execute positioned 45.5 82.5 33.5 run particle minecraft:block{block_state:"minecraft:pumpkin"} ~ ~ ~ 0.35 0.35 0.35 0.08 20 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"build_snowman"}}] 1
function fossil_frights:tasks/medium/build_snowman/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
