execute unless score $smelly_toilet_sel ff_task_state matches 1 run return 0
execute unless score $smelly_toilet_done ff_task_state matches 0 run return 0
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "smelly_toilet"
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 run setblock 24 81 8 minecraft:air
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 as @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{scale:[0,0,0]}}
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 positioned 26.5 80.5 9.5 run particle minecraft:cloud ~ ~0.25 ~ 0.45 0.2 0.45 0.02 28 force
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 positioned 26.5 80.5 9.5 run particle minecraft:dust{color:[0.75,0.95,1.0],scale:1.1} ~ ~0.25 ~ 0.35 0.2 0.35 0.01 18 force
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 positioned 26.5 80.5 9.5 run playsound minecraft:item.bottle.empty block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.65 1.6
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 positioned 26.5 80.5 9.5 run playsound minecraft:entity.generic.splash block @a[tag=ff_active,distance=..18] ~ ~ ~ 0.35 1.9
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $smelly_toilet_sel ff_task_state matches 1 if score $smelly_toilet_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"smelly_toilet"}] 1
execute if score $smelly_toilet_sel ff_task_state matches 1 run scoreboard players set $smelly_toilet_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
