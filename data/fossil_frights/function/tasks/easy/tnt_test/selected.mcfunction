execute if score $tnt_test_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $tnt_test_sel ff_task_state matches 0 run function fossil_frights:tasks/easy/tnt_test/selected_book
scoreboard players set $tnt_test_sel ff_task_state 1
scoreboard players set $tnt_test_done ff_task_state 0
function fossil_frights:tasks/easy/tnt_test/close_gate
function fossil_frights:tasks/tracker/refresh
