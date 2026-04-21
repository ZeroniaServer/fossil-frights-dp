scoreboard players set $a_c_reset_variant ff_task_state 0
scoreboard players set $a_c_btn_1_pressed ff_task_state 0
scoreboard players set $a_c_btn_2_pressed ff_task_state 0
scoreboard players set $a_c_btn_3_pressed ff_task_state 0
scoreboard players set $a_c_btn_4_pressed ff_task_state 0
scoreboard players set $a_c_fan_timer ff_task_state 0
scoreboard players set $a_c_fan_spin ff_task_state 0
scoreboard players set $a_c_fan_rot_state ff_task_state 0
scoreboard players set $a_c_timer_active ff_task_state 0
data modify entity @e[tag=ac_fan,limit=1] transformation.left_rotation set value [0f,0f,0f,1f]
data merge entity @e[tag=ac_fan,limit=1] {start_interpolation:0,interpolation_duration:0}
data merge storage fossil_frights:a_c_reset {display:{c1:"white",c2:"white",c3:"white",c4:"white"}}
tag @a[tag=ff_active] remove ff_a_c_reset_in_range
