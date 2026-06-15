execute if score $sponge_up_spill_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $sponge_up_spill_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/medium/sponge_up_spill
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -15 79 70 minecraft:mangrove_slab[type=bottom,waterlogged=true]
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -15 79 69 minecraft:mangrove_slab[type=bottom,waterlogged=true]
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -16 79 69 minecraft:mangrove_slab[type=bottom,waterlogged=true]
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -16 79 68 minecraft:mangrove_slab[type=bottom,waterlogged=true]
scoreboard players set $sponge_up_spill_sel ff_task_state 1
scoreboard players set $sponge_up_spill_done ff_task_state 0
function fossil_frights:tasks/medium/sponge_up_spill/spawn
function fossil_frights:tasks/tracker/refresh
