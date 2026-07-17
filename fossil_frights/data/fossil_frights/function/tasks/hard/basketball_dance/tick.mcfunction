scoreboard players remove $basketball_dance_timer ff_task_state 1
scoreboard players remove $basketball_dance_pose_tick ff_task_state 1
execute if score $basketball_dance_pose_tick ff_task_state matches ..0 positioned -23.5 81.2 32.5 run particle minecraft:note ~ ~ ~ 0.0 0.0 0.0 1 1 force
execute if score $basketball_dance_pose_tick ff_task_state matches ..0 run function fossil_frights:tasks/hard/basketball_dance/advance_pose
execute if score $basketball_dance_pose_tick ff_task_state matches ..0 run scoreboard players set $basketball_dance_pose_tick ff_task_state 5
execute if score $basketball_dance_timer ff_task_state matches ..0 run function fossil_frights:tasks/hard/basketball_dance/end_dance
