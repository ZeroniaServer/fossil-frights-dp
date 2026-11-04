execute unless score $decorate_tree_sel ff_task_state matches 1 run return 0
execute unless score $decorate_tree_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "decorate_tree"
function fossil_frights:tasks/hard/decorate_tree/cleanup
execute positioned 0 108 21 run playsound minecraft:block.note_block.chime master @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.9 1.4
execute positioned 0 108 21 run particle minecraft:glow ~ ~0.35 ~ 0.45 0.45 0.45 0.02 24 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"decorate_tree"}}] 1
scoreboard players set $decorate_tree_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
