execute if score $sponge_up_spill_done ff_task_state matches 0.. run setblock -15 80 69 minecraft:air strict
execute if score $sponge_up_spill_done ff_task_state matches 0.. run setblock -14 80 71 minecraft:air
execute positioned -14.5 80.5 69.5 run particle minecraft:splash ~ ~ ~ 0.15 0.05 0.15 0.02 8 force
execute positioned -13.5 80.5 71.5 run particle minecraft:splash ~ ~ ~ 0.15 0.05 0.15 0.02 8 force
