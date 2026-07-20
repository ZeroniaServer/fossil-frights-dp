kill @e[type=minecraft:text_display,tag=ff_chat_label]
kill @e[type=minecraft:interaction,tag=ff_start_room_setting_chat_click]
summon minecraft:text_display 10.03 72.1 24.5 {Tags:["ff_chat_label"],text:"",billboard:"fixed",Rotation:[270,0],background:1073741824,default_background:true,shadow:true,brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.75,0.75,0.75]}}
summon minecraft:interaction 10.0 71 24.5 {Tags:["ff_start_room_setting_chat_click"],width:1,height:1,response:true}
