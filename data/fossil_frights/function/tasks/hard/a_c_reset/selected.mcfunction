execute if score $a_c_reset_sel ff_task_state matches 0 run scoreboard players add $task_selected_total ff_task_state 1
execute if score $a_c_reset_sel ff_task_state matches 0 run loot insert 18 71 29 loot fossil_frights:items/task_books/hard/a_c_reset
scoreboard players set $a_c_reset_sel ff_task_state 1
scoreboard players set $a_c_reset_done ff_task_state 0
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
execute store result score $a_c_reset_variant ff_task_state run random value 1..3
function fossil_frights:tasks/hard/a_c_reset/place_variant
tag @a[team=ff_guard] remove ff_a_c_reset_in_range
function fossil_frights:tasks/tracker/refresh
