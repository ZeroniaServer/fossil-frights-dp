execute unless score $swat_flies_sel ff_task_state matches 1 run return 0
execute unless score $swat_flies_done ff_task_state matches 0 run return 0
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Swat Flies"
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 at @s run playsound minecraft:entity.player.attack.sweep master @a[tag=ff_active,distance=..12] ~ ~ ~ 0.8 1.3
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 positioned 0.5 95.6 52.5 run playsound minecraft:entity.bee.hurt master @a[tag=ff_active,distance=..12] ~ ~ ~ 0.5 1.6
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 run function fossil_frights:tasks/easy/swat_flies/cleanup
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $swat_flies_sel ff_task_state matches 1 if score $swat_flies_done ff_task_state matches 0 if entity @s[type=minecraft:player] run clear @s minecraft:written_book[minecraft:custom_data~{ff_task_book:"swat_flies"}] 1
execute if score $swat_flies_sel ff_task_state matches 1 run scoreboard players set $swat_flies_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
