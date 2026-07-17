execute unless score $glowberry_trees_sel ff_task_state matches 1 run return 0
execute unless score $glowberry_trees_done ff_task_state matches 0 run return 0
execute unless score $glowberry_tree_1_watered ff_task_state matches 1 run return 0
execute unless score $glowberry_tree_2_watered ff_task_state matches 1 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "glowberry_trees"
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"glowberry_trees"}] 1
scoreboard players set $glowberry_trees_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
