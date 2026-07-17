kill @e[type=minecraft:item_display,tag=ff_start_room_glass_box]
kill @e[type=minecraft:interaction,tag=ff_start_room_glass_box_click]
summon minecraft:item_display 16 71 23 {Tags:["ff_start_room_glass_box"],item_display:"fixed",Rotation:[0f,0f],item:{id:"minecraft:gray_stained_glass_pane",count:1,components:{"minecraft:item_name":{text:"Glass Box",italic:false},"minecraft:lore":[{text:"",extra:["glass_box_closed"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[-0.5f,0.5f,0.5f,0.5f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:interaction 16.5 71 23.5 {width:1,height:1,response:true,Tags:["ff_start_room_glass_box_click"]}
