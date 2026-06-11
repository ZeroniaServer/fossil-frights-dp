execute unless score $fertilize_plant_sel ff_task_state matches 1 run return 0
execute unless score $fertilize_plant_done ff_task_state matches 0 run return 0
execute unless entity @s[tag=ff_active] run return 0
execute unless items entity @s weapon.mainhand minecraft:bone_meal unless items entity @s weapon.offhand minecraft:bone_meal run return 0
data modify storage fossil_frights:tasks complete.task_name set value "Fertilize Plant"
function fossil_frights:tasks/hard/fertilize_plant/effects_selected
function fossil_frights:tasks/hard/fertilize_plant/restore_all
function fossil_frights:tasks/hard/fertilize_plant/cleanup
clear @s minecraft:bone_meal 1
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"fertilize_plant"}] 1
scoreboard players set $fertilize_plant_done ff_task_state 1
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
