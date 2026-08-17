execute unless score $refill_ice_sel ff_task_state matches 1 run return 0
execute unless score $refill_ice_done ff_task_state matches 0 run return 0
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "refill_ice"
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 positioned 26 81.5 17 run playsound fossil-frights:task.refill_ice master @a[team=ff_guard,distance=..18] ~ ~ ~ 0.9 1.0
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 positioned 26 81.5 17 run particle minecraft:snowflake ~ ~ ~ 0.75 1.1 1.45 0.01 14 force
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 positioned 26 81.5 17 run particle minecraft:dust{color:[0.62,0.9,1.0],scale:0.8} ~ ~ ~ 0.7 1.0 1.35 0.01 8 force
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 positioned 26 81.5 17 run playsound minecraft:block.powder_snow.place block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.8 0.8
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 positioned 26 81.5 17 run playsound minecraft:block.glass.break block @a[team=ff_guard,distance=..18] ~ ~ ~ 0.35 1.7
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $refill_ice_sel ff_task_state matches 1 if score $refill_ice_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"refill_ice"}] 1
execute if score $refill_ice_sel ff_task_state matches 1 run scoreboard players set $refill_ice_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/medium/refill_ice/cleanup
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
