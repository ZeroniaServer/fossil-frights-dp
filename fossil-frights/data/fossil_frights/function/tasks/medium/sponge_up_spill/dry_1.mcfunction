execute if score $sponge_up_spill_done ff_task_state matches 0.. run setblock -15 79 70 minecraft:mangrove_slab[type=bottom,waterlogged=false]
execute positioned -14.5 79.5 70.5 run particle minecraft:splash ~ ~ ~ 0.15 0.05 0.15 0.02 8 force
