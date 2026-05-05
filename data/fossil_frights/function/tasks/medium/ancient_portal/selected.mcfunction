execute if score $ancient_portal_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $ancient_portal_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/ancient_portal/selected_book
scoreboard players set $ancient_portal_sel ff_task_state 1
scoreboard players set $ancient_portal_done ff_task_state 0
scoreboard players set $ancient_portal_timer ff_task_state 0
scoreboard players set $ancient_portal_dest ff_task_state 0
