execute if score $tnt_test_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $tnt_test_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/tnt_test
scoreboard players set $tnt_test_sel ff_task_state 1
scoreboard players set $tnt_test_done ff_task_state 0
function fossil_frights:tasks/easy/tnt_test/close_gate
function fossil_frights:tasks/tracker/refresh
