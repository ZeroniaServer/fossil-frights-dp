execute if score $fix_cracked_egg_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $fix_cracked_egg_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/easy/fix_cracked_egg
scoreboard players set $fix_cracked_egg_sel ff_task_state 1
scoreboard players set $fix_cracked_egg_done ff_task_state 0
function fossil_frights:tasks/easy/fix_cracked_egg/spawn
function fossil_frights:tasks/tracker/refresh
