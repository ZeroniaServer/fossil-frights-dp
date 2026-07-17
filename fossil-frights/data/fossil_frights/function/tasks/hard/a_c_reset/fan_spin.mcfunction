execute if score $a_c_fan_spin ff_task_state matches ..0 run return 0

execute if score $a_c_fan_rot_state ff_task_state matches 0 run data modify entity @e[tag=ac_fan,limit=1] transformation.left_rotation set value [0f,0f,0.7071f,0.7071f]
execute if score $a_c_fan_rot_state ff_task_state matches 1 run data modify entity @e[tag=ac_fan,limit=1] transformation.left_rotation set value [0f,0f,1f,0f]
execute if score $a_c_fan_rot_state ff_task_state matches 2 run data modify entity @e[tag=ac_fan,limit=1] transformation.left_rotation set value [0f,0f,0.7071f,-0.7071f]
execute if score $a_c_fan_rot_state ff_task_state matches 3 run data modify entity @e[tag=ac_fan,limit=1] transformation.left_rotation set value [0f,0f,0f,1f]

data merge entity @e[tag=ac_fan,limit=1] {start_interpolation:0,interpolation_duration:3}

scoreboard players add $a_c_fan_rot_state ff_task_state 1
execute if score $a_c_fan_rot_state ff_task_state matches 4.. run scoreboard players set $a_c_fan_rot_state ff_task_state 0

scoreboard players remove $a_c_fan_spin ff_task_state 1
execute if score $a_c_fan_spin ff_task_state matches 1.. run schedule function fossil_frights:tasks/hard/a_c_reset/fan_spin 3t
