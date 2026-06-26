execute unless score $make_some_noise_sel ff_task_state matches 1 run return 0
execute unless score $make_some_noise_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "make_some_noise"
execute positioned 61 72 71 run playsound minecraft:entity.warden.ambient player @a[tag=ff_active,distance=..20] ~ ~ ~ 1.0 1.0
execute positioned 61 72 71 run playsound minecraft:block.sculk_sensor.clicking player @a[tag=ff_active,distance=..20] ~ ~ ~ 0.8 1.0
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"make_some_noise"}] 1
scoreboard players set $make_some_noise_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
