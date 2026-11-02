execute if score $remove_dart_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $remove_dart_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/remove_dart
scoreboard players set $remove_dart_sel ff_task_state 1
scoreboard players set $remove_dart_done ff_task_state 0
function fossil_frights:tasks/easy/remove_dart/set_display_visible
function fossil_frights:tasks/easy/remove_dart/spawn
function fossil_frights:tasks/tracker/refresh
