execute unless score $a_c_reset_sel ff_task_state matches 1 run return 0
execute if score $a_c_reset_done ff_task_state matches 1 run return 0

execute if score $a_c_btn_1_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_1_pressed ff_task_state 1
execute if score $a_c_btn_2_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_2_pressed ff_task_state 1
execute if score $a_c_btn_3_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_3_pressed ff_task_state 1
execute if score $a_c_btn_4_pressed ff_task_state matches 1.. run scoreboard players remove $a_c_btn_4_pressed ff_task_state 1

execute if score $a_c_btn_1_pressed ff_task_state matches 15 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue501"
execute if score $a_c_btn_1_pressed ff_task_state matches 13..14 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue502"
execute if score $a_c_btn_1_pressed ff_task_state matches 11..12 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue503"
execute if score $a_c_btn_1_pressed ff_task_state matches 9..10 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue504"
execute if score $a_c_btn_1_pressed ff_task_state matches 7..8 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue505"
execute if score $a_c_btn_1_pressed ff_task_state matches 5..6 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue506"
execute if score $a_c_btn_1_pressed ff_task_state matches 3..4 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue507"
execute if score $a_c_btn_1_pressed ff_task_state matches 1..2 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue508"
execute if score $a_c_btn_1_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c1 set value "\ue500"
execute if score $a_c_btn_2_pressed ff_task_state matches 15 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue501"
execute if score $a_c_btn_2_pressed ff_task_state matches 13..14 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue502"
execute if score $a_c_btn_2_pressed ff_task_state matches 11..12 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue503"
execute if score $a_c_btn_2_pressed ff_task_state matches 9..10 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue504"
execute if score $a_c_btn_2_pressed ff_task_state matches 7..8 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue505"
execute if score $a_c_btn_2_pressed ff_task_state matches 5..6 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue506"
execute if score $a_c_btn_2_pressed ff_task_state matches 3..4 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue507"
execute if score $a_c_btn_2_pressed ff_task_state matches 1..2 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue508"
execute if score $a_c_btn_2_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c2 set value "\ue500"
execute if score $a_c_btn_3_pressed ff_task_state matches 15 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue501"
execute if score $a_c_btn_3_pressed ff_task_state matches 13..14 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue502"
execute if score $a_c_btn_3_pressed ff_task_state matches 11..12 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue503"
execute if score $a_c_btn_3_pressed ff_task_state matches 9..10 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue504"
execute if score $a_c_btn_3_pressed ff_task_state matches 7..8 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue505"
execute if score $a_c_btn_3_pressed ff_task_state matches 5..6 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue506"
execute if score $a_c_btn_3_pressed ff_task_state matches 3..4 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue507"
execute if score $a_c_btn_3_pressed ff_task_state matches 1..2 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue508"
execute if score $a_c_btn_3_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c3 set value "\ue500"
execute if score $a_c_btn_4_pressed ff_task_state matches 15 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue501"
execute if score $a_c_btn_4_pressed ff_task_state matches 13..14 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue502"
execute if score $a_c_btn_4_pressed ff_task_state matches 11..12 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue503"
execute if score $a_c_btn_4_pressed ff_task_state matches 9..10 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue504"
execute if score $a_c_btn_4_pressed ff_task_state matches 7..8 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue505"
execute if score $a_c_btn_4_pressed ff_task_state matches 5..6 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue506"
execute if score $a_c_btn_4_pressed ff_task_state matches 3..4 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue507"
execute if score $a_c_btn_4_pressed ff_task_state matches 1..2 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue508"
execute if score $a_c_btn_4_pressed ff_task_state matches 0 run data modify storage fossil_frights:a_c_reset display.c4 set value "\ue500"

execute unless score $a_c_btn_1_pressed ff_task_state matches 1.. unless score $a_c_btn_2_pressed ff_task_state matches 1.. unless score $a_c_btn_3_pressed ff_task_state matches 1.. unless score $a_c_btn_4_pressed ff_task_state matches 1.. run scoreboard players set $a_c_timer_active ff_task_state 0
execute unless score $a_c_btn_1_pressed ff_task_state matches 1.. unless score $a_c_btn_2_pressed ff_task_state matches 1.. unless score $a_c_btn_3_pressed ff_task_state matches 1.. unless score $a_c_btn_4_pressed ff_task_state matches 1.. run return 0
schedule function fossil_frights:tasks/hard/a_c_reset/timer_tick 20t
