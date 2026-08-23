execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "basketball_dance"
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 positioned 40.5 83.5 34.5 run particle minecraft:firework ~ ~ ~ 0.15 0.15 0.15 0.01 8 force
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 positioned 40.5 83.5 34.5 run playsound minecraft:block.note_block.pling master @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 1.0 1.6
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 positioned 40.5 83.5 34.5 run playsound minecraft:entity.experience_orb.pickup master @a[tag=ff_frights_feedback_viewer,distance=..24] ~ ~ ~ 0.8 1.4
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 run function fossil_frights:tasks/hard/basketball_dance/reset
execute if score $basketball_dance_sel ff_task_state matches 1 if score $basketball_dance_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"basketball_dance"}] 1
execute if score $basketball_dance_sel ff_task_state matches 1 run scoreboard players set $basketball_dance_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
