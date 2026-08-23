execute if score $water_crops_done ff_task_state matches 1 run fill 58 81 69 63 83 78 minecraft:potatoes[age=5] replace minecraft:potatoes strict
execute if score $water_crops_done ff_task_state matches 1 run fill 58 81 69 63 83 78 minecraft:carrots[age=5] replace minecraft:carrots
execute if score $water_crops_done ff_task_state matches 1 run fill 58 81 69 63 83 78 minecraft:wheat[age=5] replace minecraft:wheat
execute if score $water_crops_done ff_task_state matches 1 run fill 58 81 69 63 83 78 minecraft:beetroots[age=3] replace minecraft:beetroots
execute if score $water_crops_done ff_task_state matches 1 positioned 60.5 82 73.5 run playsound minecraft:block.crop.break block @a[tag=ff_frights_feedback_viewer,distance=..22] ~ ~ ~ 0.35 1.8
