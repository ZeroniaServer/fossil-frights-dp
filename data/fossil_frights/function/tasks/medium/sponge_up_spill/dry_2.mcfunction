execute if score $sponge_up_spill_done ff_task_state matches 1 run setblock -15 79 69 minecraft:mangrove_slab[type=bottom,waterlogged=false]
execute if score $sponge_up_spill_done ff_task_state matches 1 positioned -14.5 79.5 69.5 run particle minecraft:splash ~ ~ ~ 0.15 0.05 0.15 0.02 8 force
execute if score $sponge_up_spill_done ff_task_state matches 1 positioned -14.5 79.5 69.5 run playsound minecraft:item.bucket.fill block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.25 1.9
