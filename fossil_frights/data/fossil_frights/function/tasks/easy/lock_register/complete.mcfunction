execute unless score $lock_register_sel ff_task_state matches 1 run return 0
execute unless score $lock_register_done ff_task_state matches 0 run return 0
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "lock_register"
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 as @a[team=ff_guard] at @s run playsound fossil-frights:task.lock_register master @s ~ ~ ~ 0.9 1.0
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 as @a[team=ff_guard] at @s run playsound minecraft:block.chest.locked master @s ~ ~ ~ 0.9 1.0
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 run function fossil_frights:tasks/easy/lock_register/set_closed
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 run function fossil_frights:tasks/easy/lock_register/cleanup
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $lock_register_sel ff_task_state matches 1 if score $lock_register_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"lock_register"}] 1
execute if score $lock_register_sel ff_task_state matches 1 run scoreboard players set $lock_register_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
