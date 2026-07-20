execute unless score $a_c_reset_sel ff_task_state matches 1 run return 0
execute if score $a_c_reset_done ff_task_state matches 1 run return 0
execute if score $a_c_btn_4_pressed ff_task_state matches 15 run return 0
scoreboard players set $a_c_btn_4_pressed ff_task_state 15
data modify storage fossil_frights:a_c_reset display.c4 set value "#55FFFF"
execute positioned 0 105 59 run playsound minecraft:entity.player.hurt_freeze block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.7 1.4
execute positioned 0 105 59 run playsound minecraft:block.powder_snow.break block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.6 1.2
execute positioned 0 105 59 run particle minecraft:snowflake ~ ~ ~ 0.3 0.3 0.3 0.05 15 force
execute if score $a_c_timer_active ff_task_state matches 0 run schedule function fossil_frights:tasks/hard/a_c_reset/timer_tick 20t
scoreboard players set $a_c_timer_active ff_task_state 1
function fossil_frights:tasks/hard/a_c_reset/check_complete
