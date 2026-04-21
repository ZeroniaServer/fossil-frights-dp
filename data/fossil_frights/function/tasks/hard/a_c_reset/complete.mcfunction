execute unless score $a_c_reset_sel ff_task_state matches 1 run return 0
execute unless score $a_c_reset_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "A/C Reset"
execute positioned -1 107 58 run playsound minecraft:block.copper_bulb.turn_on block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.8 1.0
scoreboard players set $a_c_fan_timer ff_task_state 8
function fossil_frights:tasks/hard/a_c_reset/fan_loop
scoreboard players set $a_c_fan_spin ff_task_state 100
scoreboard players set $a_c_fan_rot_state ff_task_state 0
function fossil_frights:tasks/hard/a_c_reset/fan_spin
tag @a[tag=ff_active] remove ff_a_c_reset_in_range
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"a_c_reset"}] 1
scoreboard players set $a_c_reset_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
