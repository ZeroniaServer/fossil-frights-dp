execute unless score $final_task_sel ff_task_state matches 1 run return 0
execute if score $final_task_centrifuge_timer ff_task_state matches 1.. run return 0
scoreboard players set $final_task_centrifuge_timer ff_task_state 100
playsound minecraft:block.beacon.ambient block @a[tag=ff_frights_feedback_viewer,distance=..24] -23.5 107.5 64.5 0.5 1.2
playsound minecraft:block.respawn_anchor.charge block @a[tag=ff_frights_feedback_viewer,distance=..24] -23.5 107.5 64.5 0.35 1.7
