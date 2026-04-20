execute unless score $reset_fountain_sel ff_task_state matches 1 run return 0
execute unless score $reset_fountain_done ff_task_state matches 0 run return 0
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Reset Fountain"
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 run setblock 0 97 77 minecraft:air
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 run schedule function fossil_frights:tasks/easy/reset_fountain/set_water 10t replace
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 as @a[tag=ff_active] at @s run playsound minecraft:block.bubble_column.upwards_inside master @s ~ ~ ~ 0.7 1.4
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $reset_fountain_sel ff_task_state matches 1 if score $reset_fountain_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"reset_fountain"}] 1
execute if score $reset_fountain_sel ff_task_state matches 1 run scoreboard players set $reset_fountain_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
