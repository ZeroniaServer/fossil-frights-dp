execute if score $fix_sculker_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $fix_sculker_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/fix_sculker
scoreboard players set $fix_sculker_sel ff_task_state 1
scoreboard players set $fix_sculker_done ff_task_state 0
setblock 36 68 61 minecraft:sculk_catalyst[bloom=false]
function fossil_frights:tasks/medium/fix_sculker/spawn
function fossil_frights:tasks/tracker/refresh
