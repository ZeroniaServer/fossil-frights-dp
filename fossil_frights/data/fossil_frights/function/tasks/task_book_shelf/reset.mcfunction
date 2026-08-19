kill @e[type=minecraft:item_display,tag=ff_task_book_shelf_display]
execute positioned 18.5 71.0 28.5 rotated 180 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/start_room/task_book_shelf",nbt:{Tags:["ff_task_book_shelf_display"],transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,-0.999],right_rotation:[0,0,0,1],scale:[1,1,1]},item_display:"none",width:1,height:1}}
function fossil_frights:tasks/task_book_shelf/update

kill @e[type=minecraft:interaction,tag=ff_task_book_shelf_slot]
summon minecraft:interaction 18.833 71.5 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_0"],width:0.333,height:0.499,response:true}
summon minecraft:interaction 18.5 71.5 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_1"],width:0.333,height:0.499,response:true}
summon minecraft:interaction 18.167 71.5 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_2"],width:0.333,height:0.499,response:true}
summon minecraft:interaction 18.833 71.0 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_3"],width:0.333,height:0.5,response:true}
summon minecraft:interaction 18.5 71.0 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_4"],width:0.333,height:0.5,response:true}
summon minecraft:interaction 18.167 71.0 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_5"],width:0.333,height:0.5,response:true}
