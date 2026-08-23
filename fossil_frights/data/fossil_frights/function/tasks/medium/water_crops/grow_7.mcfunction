execute if score $water_crops_done ff_task_state matches 1 run function fossil_frights:tasks/medium/water_crops/set_age_7
execute if score $water_crops_done ff_task_state matches 1 positioned 60.5 82 73.5 run playsound minecraft:block.crop.break block @a[tag=ff_frights_feedback_viewer,distance=..22] ~ ~ ~ 0.35 2.0
