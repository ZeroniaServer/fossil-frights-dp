execute unless score $dive_into_well_sel ff_task_state matches 1 run return 0
execute unless score $dive_into_well_done ff_task_state matches 0 run return 0
execute if score $dive_into_well_sel ff_task_state matches 1 if score $dive_into_well_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "dive_into_well"
execute if score $dive_into_well_sel ff_task_state matches 1 if score $dive_into_well_done ff_task_state matches 0 at @s run playsound minecraft:entity.generic.splash master @a[team=ff_guard,distance=..18] ~ ~ ~ 0.9 1.0
execute if score $dive_into_well_sel ff_task_state matches 1 if score $dive_into_well_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $dive_into_well_sel ff_task_state matches 1 if score $dive_into_well_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $dive_into_well_sel ff_task_state matches 1 if score $dive_into_well_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"dive_into_well"}] 1
execute if score $dive_into_well_sel ff_task_state matches 1 run scoreboard players set $dive_into_well_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
