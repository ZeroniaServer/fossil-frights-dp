execute if score $sponge_up_spill_done ff_task_state matches 1 positioned -13.5 79.5 70.5 run particle minecraft:splash ~ ~ ~ 0.15 0.05 0.15 0.02 8 force
execute if score $sponge_up_spill_done ff_task_state matches 1 positioned -13.5 79.5 70.5 run playsound minecraft:item.bucket.fill block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.25 1.9
