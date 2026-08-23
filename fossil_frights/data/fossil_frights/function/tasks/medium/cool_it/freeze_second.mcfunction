execute if score $cool_it_done ff_task_state matches 1 run setblock 24 103 9 minecraft:ice
execute if score $cool_it_done ff_task_state matches 1 positioned 24.5 103.5 9.5 run particle minecraft:snowflake ~ ~ ~ 0.35 0.25 0.35 0.02 28 force
execute if score $cool_it_done ff_task_state matches 1 positioned 24.5 103.5 9.5 run playsound minecraft:block.glass.break block @a[tag=ff_frights_feedback_viewer,distance=..18] ~ ~ ~ 0.4 1.9
