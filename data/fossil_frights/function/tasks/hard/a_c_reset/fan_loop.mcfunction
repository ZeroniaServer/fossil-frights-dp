execute if score $a_c_fan_timer ff_task_state matches ..0 run return 0
execute positioned -1 107 58 run playsound minecraft:entity.breeze.wind_burst block @a[team=ff_guard,distance=..24] ~ ~ ~ 0.4 0.7
scoreboard players remove $a_c_fan_timer ff_task_state 1
execute if score $a_c_fan_timer ff_task_state matches 1.. run schedule function fossil_frights:tasks/hard/a_c_reset/fan_loop 40t
