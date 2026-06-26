execute unless score $toilet_clog_sel ff_task_state matches 1 run return 0
execute unless score $toilet_clog_done ff_task_state matches 0 run return 0
execute if score $toilet_clog_sel ff_task_state matches 1 if score $toilet_clog_done ff_task_state matches 0 run setblock 27 80 11 minecraft:air
execute if score $toilet_clog_sel ff_task_state matches 1 if score $toilet_clog_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "toilet_clog"
execute if score $toilet_clog_sel ff_task_state matches 1 if score $toilet_clog_done ff_task_state matches 0 as @a[tag=ff_active] at @s run playsound minecraft:entity.generic.splash master @s ~ ~ ~ 0.9 1.2
execute if score $toilet_clog_sel ff_task_state matches 1 if score $toilet_clog_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $toilet_clog_sel ff_task_state matches 1 if score $toilet_clog_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $toilet_clog_sel ff_task_state matches 1 if score $toilet_clog_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"toilet_clog"}] 1
execute if score $toilet_clog_sel ff_task_state matches 1 run scoreboard players set $toilet_clog_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
