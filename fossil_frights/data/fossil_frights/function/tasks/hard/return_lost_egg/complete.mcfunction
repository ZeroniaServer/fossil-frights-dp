execute unless score $return_lost_egg_sel ff_task_state matches 1 run return 0
execute unless score $return_lost_egg_done ff_task_state matches 0 run return 0
data modify storage fossil_frights:tasks complete.task_name set value "return_lost_egg"
function fossil_frights:tasks/hard/return_lost_egg/cleanup
execute as @e[type=#fossil_frights:display_entities,tag=ff_found_egg] run data modify entity @s view_range set value 1
execute positioned 13 96 87 run playsound minecraft:entity.chicken.egg master @a[tag=ff_frights_feedback_viewer,distance=..20] ~ ~ ~ 0.8 1.0
execute positioned 13 96 87 run particle minecraft:happy_villager ~ ~0.5 ~ 1 0.35 1 0.02 20 force
function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
scoreboard players add $task_completed_total ff_task_state 1
clear @a[predicate=fossil_frights:player/team/guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:{id:"return_lost_egg"}}] 1
scoreboard players set $return_lost_egg_done ff_task_state 1
execute if entity @s[type=minecraft:item] run function fossil_frights:items/util/return_all_but_one_to_thrower
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
