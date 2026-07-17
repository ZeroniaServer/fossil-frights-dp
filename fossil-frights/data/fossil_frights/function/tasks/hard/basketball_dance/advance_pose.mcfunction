scoreboard players add $basketball_dance_pose ff_task_state 1
execute if score $basketball_dance_pose ff_task_state matches 1 run function fossil_frights:tasks/hard/basketball_dance/pose_1
execute if score $basketball_dance_pose ff_task_state matches 2 run function fossil_frights:tasks/hard/basketball_dance/pose_2
execute if score $basketball_dance_pose ff_task_state matches 3 run function fossil_frights:tasks/hard/basketball_dance/pose_3
execute if score $basketball_dance_pose ff_task_state matches 4 run function fossil_frights:tasks/hard/basketball_dance/pose_4
execute if score $basketball_dance_pose ff_task_state matches 5.. run scoreboard players set $basketball_dance_pose ff_task_state 1
execute if score $basketball_dance_pose ff_task_state matches 1 run function fossil_frights:tasks/hard/basketball_dance/pose_1
