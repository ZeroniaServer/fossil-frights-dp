execute if score $visit_neogene_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $visit_neogene_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/visit_neogene/selected_book
scoreboard players set $visit_neogene_sel ff_task_state 1
scoreboard players set $visit_neogene_done ff_task_state 0
function fossil_frights:tasks/tracker/refresh
