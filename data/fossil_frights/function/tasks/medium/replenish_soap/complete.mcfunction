execute unless score $replenish_soap_sel ff_task_state matches 1 run return 0
execute unless score $replenish_soap_done ff_task_state matches 0 run return 0
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run data modify storage fossil_frights:tasks complete.task_name set value "Replenish Soap"
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run function fossil_frights:tasks/medium/replenish_soap/cleanup
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run summon minecraft:item_display -22.5 95.00 19.5 {Tags:["ff_replenish_soap_display"],item:{id:"minecraft:paper",count:1},item_display:"fixed",brightness:{sky:15,block:15},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[-0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[0.33f,0.33f,0.33f]}}
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run data modify entity @e[type=minecraft:item_display,tag=ff_replenish_soap_display,sort=nearest,limit=1,x=-22.5,y=95.00,z=19.5,distance=..0.2] item set from entity @s Item
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 positioned -22.5 94 19.5 run particle minecraft:dust{color:[1.0,0.45,0.8],scale:0.9} ~ ~ ~ 0.28 0.18 0.28 0.01 24 force
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 positioned -22.5 94 19.5 run particle minecraft:poof ~ ~ ~ 0.18 0.1 0.18 0.01 8 force
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run function fossil_frights:tasks/messages/show_complete_macro with storage fossil_frights:tasks complete
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run scoreboard players add $task_completed_total ff_task_state 1
execute if score $replenish_soap_sel ff_task_state matches 1 if score $replenish_soap_done ff_task_state matches 0 run clear @a[tag=ff_active] minecraft:written_book[minecraft:custom_data~{ff_task_book:"replenish_soap"}] 1
execute if score $replenish_soap_sel ff_task_state matches 1 run scoreboard players set $replenish_soap_done ff_task_state 1
kill @s
function fossil_frights:tasks/tracker/refresh
function fossil_frights:tasks/check_day_complete
