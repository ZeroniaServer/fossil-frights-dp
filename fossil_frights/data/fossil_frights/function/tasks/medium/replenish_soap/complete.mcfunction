execute unless score $replenish_soap_sel ff_task_state matches 1 run return 0
execute unless score $replenish_soap_done ff_task_state matches 0 run return 0
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "replenish_soap"
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run function fossil_frights:tasks/medium/replenish_soap/cleanup
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 positioned -22.5 95.0 19.5 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:items/storage/soap",nbt:{Tags:["ff_replenish_soap_display"],width:0.5,height:0.25,item_display:"fixed",brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[-0.7071068,0,0,0.7071068],translation:[0,0,0],scale:[0.33,0.33,0.33]}}}
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 positioned -22.5 94 19.5 run particle minecraft:dust{color:[1.0,0.45,0.8],scale:0.9} ~ ~ ~ 0.28 0.18 0.28 0.01 24 force
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 positioned -22.5 94 19.5 run particle minecraft:poof ~ ~ ~ 0.18 0.1 0.18 0.01 8 force
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run clear @a[team=ff_guard] minecraft:written_book[minecraft:custom_data~{ff_task_book:"replenish_soap"}] 1
execute if score $replenish_soap_sel ff_task_state matches 1 run scoreboard players set $replenish_soap_done ff_task_state 1
execute if entity @s[type=minecraft:item] run kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
