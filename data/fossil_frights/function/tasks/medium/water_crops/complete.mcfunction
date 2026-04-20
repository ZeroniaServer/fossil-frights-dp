execute unless score $water_crops_sel ff_task_state matches 1 run return 0
execute unless score $water_crops_done ff_task_state matches 0 run return 0
scoreboard players set $water_crops_pending ff_task_state 0
tag @e[tag=ff_water_crops_potion] remove ff_water_crops_potion
data modify storage fossil_frights:tasks complete.task_name set value "Water Crops"
function fossil_frights:tasks/medium/water_crops/grow_3
schedule function fossil_frights:tasks/medium/water_crops/grow_5 6t
schedule function fossil_frights:tasks/medium/water_crops/grow_7 12t
execute positioned 60.5 82 73.5 run playsound minecraft:entity.generic.splash block @a[tag=ff_active,distance=..22] ~ ~ ~ 0.8 1.4
execute positioned 60.5 82 73.5 run playsound minecraft:item.crop.plant block @a[tag=ff_active,distance=..22] ~ ~ ~ 0.65 1.2
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"water_crops"}] 1
scoreboard players set $water_crops_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
