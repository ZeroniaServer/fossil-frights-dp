execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute unless score $final_task_done ff_task_state matches 0 run return 0
execute unless score $final_task_dna_done ff_task_state matches 1 run return 0
execute unless score $final_task_item_done ff_task_state matches 1 run return 0
function fossil_frights:tasks/final/final_task/reward/tag_selected
function fossil_frights:tasks/final/final_task/reward_item/summon_selected
playsound minecraft:block.beacon.activate block @a[tag=ff_frights_feedback_viewer,distance=..28] -19.5 109.9 61.0 0.95 1.35
playsound minecraft:entity.allay.item_given player @a[tag=ff_frights_feedback_viewer,distance=..28] -19.5 109.9 61.0 1 1.2
particle minecraft:end_rod -19.5 109.9 61.0 0.28 0.38 0.28 0.02 18 force
particle minecraft:poof -19.5 109.9 61.0 0.18 0.24 0.18 0.01 8 force
function fossil_frights:tasks/final/final_task/complete
