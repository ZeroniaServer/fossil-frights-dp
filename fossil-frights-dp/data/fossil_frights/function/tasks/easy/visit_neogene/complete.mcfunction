execute unless score $visit_neogene_sel ff_task_state matches 1 run return 0
execute unless score $visit_neogene_done ff_task_state matches 0 run return 0
execute if score $visit_neogene_sel ff_task_state matches 1 if score $visit_neogene_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "visit_neogene"
execute if score $visit_neogene_sel ff_task_state matches 1 if score $visit_neogene_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $visit_neogene_sel ff_task_state matches 1 if score $visit_neogene_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $visit_neogene_sel ff_task_state matches 1 if score $visit_neogene_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"visit_neogene"}] 1
execute if score $visit_neogene_sel ff_task_state matches 1 run scoreboard players set $visit_neogene_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
