kill @e[type=minecraft:item_display,tag=ff_task_book_shelf_display]
summon minecraft:item_display 18.5 71.0 28.5 {Tags:["ff_task_book_shelf_display"],item:{id:"minecraft:stone",components:{"minecraft:item_model":"fossil-frights:display/exhibits/start_room/task_book_shelf/task_book_shelf"}},transformation:{left_rotation:[0,0,0,1],translation:[0,0.5,-0.999],right_rotation:[0,0,0,1],scale:[1,1,1]},Rotation:[180,0],item_display:"none",width:1,height:1}
function fossil_frights:tasks/task_book_shelf/update

kill @e[type=minecraft:interaction,tag=ff_task_book_shelf_slot]
summon minecraft:interaction 18.833 71.5 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_0"],width:0.333,height:0.499,response:true}
summon minecraft:interaction 18.5 71.5 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_1"],width:0.333,height:0.499,response:true}
summon minecraft:interaction 18.167 71.5 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_2"],width:0.333,height:0.499,response:true}
summon minecraft:interaction 18.833 71.0 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_3"],width:0.333,height:0.5,response:true}
summon minecraft:interaction 18.5 71.0 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_4"],width:0.333,height:0.5,response:true}
summon minecraft:interaction 18.167 71.0 29.166 {Tags:["ff_task_book_shelf_slot","ff_task_book_shelf_slot_5"],width:0.333,height:0.5,response:true}
