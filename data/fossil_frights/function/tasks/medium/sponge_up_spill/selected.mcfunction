execute if score $sponge_up_spill_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $sponge_up_spill_sel ff_task_state matches 0 run function fossil_frights:tasks/medium/sponge_up_spill/selected_book
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -15 79 70 minecraft:mangrove_slab[type=bottom,waterlogged=true]
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -15 79 69 minecraft:mangrove_slab[type=bottom,waterlogged=true]
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -16 79 69 minecraft:mangrove_slab[type=bottom,waterlogged=true]
execute if score $sponge_up_spill_sel ff_task_state matches 0 run setblock -16 79 68 minecraft:mangrove_slab[type=bottom,waterlogged=true]
scoreboard players set $sponge_up_spill_sel ff_task_state 1
scoreboard players set $sponge_up_spill_done ff_task_state 0
function fossil_frights:tasks/medium/sponge_up_spill/spawn
function fossil_frights:tasks/tracker/refresh
