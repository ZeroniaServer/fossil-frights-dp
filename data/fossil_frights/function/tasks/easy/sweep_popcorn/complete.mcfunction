execute unless score $sweep_popcorn_sel ff_task_state matches 1 run return 0
execute unless score $sweep_popcorn_done ff_task_state matches 0 run return 0
execute if score $sweep_popcorn_sel ff_task_state matches 1 if score $sweep_popcorn_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "sweep_popcorn"
execute if score $sweep_popcorn_sel ff_task_state matches 1 if score $sweep_popcorn_done ff_task_state matches 0 positioned 10 69 69 run playsound minecraft:block.grass.break master @a[tag=ff_active,distance=..12] ~ ~ ~ 0.8 1.4
execute if score $sweep_popcorn_sel ff_task_state matches 1 if score $sweep_popcorn_done ff_task_state matches 0 run function fossil_frights:tasks/easy/sweep_popcorn/cleanup
execute if score $sweep_popcorn_sel ff_task_state matches 1 if score $sweep_popcorn_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $sweep_popcorn_sel ff_task_state matches 1 if score $sweep_popcorn_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $sweep_popcorn_sel ff_task_state matches 1 if score $sweep_popcorn_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"sweep_popcorn"}] 1
execute if score $sweep_popcorn_sel ff_task_state matches 1 run scoreboard players set $sweep_popcorn_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
