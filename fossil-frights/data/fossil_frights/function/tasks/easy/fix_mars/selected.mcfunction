execute if score $fix_mars_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $fix_mars_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/fix_mars
scoreboard players set $fix_mars_sel ff_task_state 1
scoreboard players set $fix_mars_done ff_task_state 0
function fossil_frights:tasks/easy/fix_mars/apply_broken
function fossil_frights:tasks/easy/fix_mars/spawn
function fossil_frights:tasks/tracker/refresh
