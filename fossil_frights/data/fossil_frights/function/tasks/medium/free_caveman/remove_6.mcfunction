execute if score $free_caveman_variant ff_task_state matches 1 run setblock 26 95 40 minecraft:air strict
execute if score $free_caveman_variant ff_task_state matches 1 run particle minecraft:block_crumble{block_state:"minecraft:frosted_ice"} 26.5 95.5 40.5 0.35 0.35 0.35 0.08 24 force
execute if score $free_caveman_variant ff_task_state matches 1 positioned 26.5 95.5 40.5 run playsound minecraft:block.glass.break block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.8 1.0
execute if score $free_caveman_variant ff_task_state matches 2 run setblock 25 94 40 minecraft:air strict
execute if score $free_caveman_variant ff_task_state matches 2 run particle minecraft:block_crumble{block_state:"minecraft:frosted_ice"} 25.5 94.5 40.5 0.35 0.35 0.35 0.08 24 force
execute if score $free_caveman_variant ff_task_state matches 2 positioned 25.5 94.5 40.5 run playsound minecraft:block.glass.break block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.8 1.0
execute if score $free_caveman_variant ff_task_state matches 3 run setblock 25 95 40 minecraft:air strict
execute if score $free_caveman_variant ff_task_state matches 3 run particle minecraft:block_crumble{block_state:"minecraft:frosted_ice"} 25.5 95.5 40.5 0.35 0.35 0.35 0.08 24 force
execute if score $free_caveman_variant ff_task_state matches 3 positioned 25.5 95.5 40.5 run playsound minecraft:block.glass.break block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.8 1.0
