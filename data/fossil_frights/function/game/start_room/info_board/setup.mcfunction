kill @e[type=minecraft:text_display,tag=ff_command_info_board]
summon minecraft:text_display 6 81.3125 5 {Tags:["ff_command_info_board"],billboard:"fixed",Rotation:[180f,0f],line_width:340,default_background:1b,see_through:0b,shadow:1b,text_opacity:255,brightness:{sky:15,block:15},alignment:"left",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.7f,0.7f,0.7f]},text:""}
execute if score $present ff_plugin matches 1 run function fossil_frights:game/start_room/info_board/set_plugin_text
execute unless score $present ff_plugin matches 1 run function fossil_frights:game/start_room/info_board/set_trigger_text
