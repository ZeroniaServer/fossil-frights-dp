execute if score $sponge_up_spill_done ff_task_state matches 1 run setblock -16 79 68 minecraft:mangrove_slab[type=bottom,waterlogged=false]
execute if score $sponge_up_spill_done ff_task_state matches 1 positioned -15.5 79.5 68.5 run particle minecraft:splash ~ ~ ~ 0.15 0.05 0.15 0.02 8 force
execute if score $sponge_up_spill_done ff_task_state matches 1 positioned -15.5 79.5 68.5 run playsound minecraft:item.bucket.fill block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.25 2.0
