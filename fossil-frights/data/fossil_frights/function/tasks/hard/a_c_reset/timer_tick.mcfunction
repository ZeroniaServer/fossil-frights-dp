execute unless score $a_c_reset_sel ff_task_state matches 1 run return 0
execute if score $a_c_reset_done ff_task_state matches 1 run return 0

execute if score $a_c_btn_1_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_1_pressed ff_task_state 1
execute if score $a_c_btn_2_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_2_pressed ff_task_state 1
execute if score $a_c_btn_3_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_3_pressed ff_task_state 1
execute if score $a_c_btn_4_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_4_pressed ff_task_state 1

execute if score $a_c_btn_1_pressed ff_task_state matches 11.. run data modify storage fossil_frights:a_c_reset display.c1 set value "#55FFFF"
execute if score $a_c_btn_1_pressed ff_task_state matches 6..10 run data modify storage fossil_frights:a_c_reset display.c1 set value "#99FFFF"
execute if score $a_c_btn_1_pressed ff_task_state matches 1..5 run data modify storage fossil_frights:a_c_reset display.c1 set value "#CCFFFF"
execute if score $a_c_btn_1_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c1 set value "white"

execute if score $a_c_btn_2_pressed ff_task_state matches 11.. run data modify storage fossil_frights:a_c_reset display.c2 set value "#55FFFF"
execute if score $a_c_btn_2_pressed ff_task_state matches 6..10 run data modify storage fossil_frights:a_c_reset display.c2 set value "#99FFFF"
execute if score $a_c_btn_2_pressed ff_task_state matches 1..5 run data modify storage fossil_frights:a_c_reset display.c2 set value "#CCFFFF"
execute if score $a_c_btn_2_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c2 set value "white"

execute if score $a_c_btn_3_pressed ff_task_state matches 11.. run data modify storage fossil_frights:a_c_reset display.c3 set value "#55FFFF"
execute if score $a_c_btn_3_pressed ff_task_state matches 6..10 run data modify storage fossil_frights:a_c_reset display.c3 set value "#99FFFF"
execute if score $a_c_btn_3_pressed ff_task_state matches 1..5 run data modify storage fossil_frights:a_c_reset display.c3 set value "#CCFFFF"
execute if score $a_c_btn_3_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c3 set value "white"

execute if score $a_c_btn_4_pressed ff_task_state matches 11.. run data modify storage fossil_frights:a_c_reset display.c4 set value "#55FFFF"
execute if score $a_c_btn_4_pressed ff_task_state matches 6..10 run data modify storage fossil_frights:a_c_reset display.c4 set value "#99FFFF"
execute if score $a_c_btn_4_pressed ff_task_state matches 1..5 run data modify storage fossil_frights:a_c_reset display.c4 set value "#CCFFFF"
execute if score $a_c_btn_4_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c4 set value "white"

execute unless score $a_c_btn_1_pressed ff_task_state matches 1.. unless score $a_c_btn_2_pressed ff_task_state matches 1.. unless score $a_c_btn_3_pressed ff_task_state matches 1.. unless score $a_c_btn_4_pressed ff_task_state matches 1.. run scoreboard players set $a_c_timer_active ff_task_state 0
execute unless score $a_c_btn_1_pressed ff_task_state matches 1.. unless score $a_c_btn_2_pressed ff_task_state matches 1.. unless score $a_c_btn_3_pressed ff_task_state matches 1.. unless score $a_c_btn_4_pressed ff_task_state matches 1.. run return 0
schedule function fossil_frights:tasks/hard/a_c_reset/timer_tick 20t
