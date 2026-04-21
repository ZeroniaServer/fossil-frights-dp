scoreboard players set $a_c_btn_2_pressed ff_task_state 15
data modify storage fossil_frights:a_c_reset display.c2 set value "#55FFFF"
execute positioned -6 105 58 run playsound minecraft:entity.player.hurt_freeze block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.7 1.4
execute positioned -6 105 58 run playsound minecraft:block.powder_snow.break block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.6 1.2
execute positioned -6 105 58 run particle minecraft:snowflake ~ ~ ~ 0.3 0.3 0.3 0.05 15 force
execute if score $a_c_timer_active ff_task_state matches 0 run schedule function fossil_frights:tasks/hard/a_c_reset/timer_tick 20t
scoreboard players set $a_c_timer_active ff_task_state 1
function fossil_frights:tasks/hard/a_c_reset/check_complete
