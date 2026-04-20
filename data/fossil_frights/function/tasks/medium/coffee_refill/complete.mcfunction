execute unless score $coffee_refill_sel ff_task_state matches 1 run return 0
execute unless score $coffee_refill_done ff_task_state matches 0 run return 0
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Coffee Refill"
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 positioned -21.5 70.5 35.5 run particle minecraft:campfire_signal_smoke ~ ~0.2 ~ 0.12 0.08 0.12 0.01 1 force
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 positioned -21.5 70.5 35.5 run particle minecraft:poof ~ ~0.2 ~ 0.2 0.1 0.2 0.01 8 force
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 positioned -21.5 70.5 35.5 run playsound minecraft:block.brewing_stand.brew block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.8 1.15
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 positioned -21.5 70.5 35.5 run playsound minecraft:block.fire.extinguish block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.28 1.8
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $coffee_refill_sel ff_task_state matches 1 if score $coffee_refill_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"coffee_refill"}] 1
execute if score $coffee_refill_sel ff_task_state matches 1 run scoreboard players set $coffee_refill_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
