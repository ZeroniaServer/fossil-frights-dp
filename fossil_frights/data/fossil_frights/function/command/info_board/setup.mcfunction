kill @e[type=minecraft:text_display,tag=ff_command_info_board]
summon minecraft:text_display 6 81.3125 5 {Tags:["ff_command_info_board"],billboard:"fixed",Rotation:[180,0],line_width:340,default_background:true,shadow:true,text_opacity:255,brightness:{sky:15,block:15},alignment:"left",transformation:{right_rotation:[0,0,0,1],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.7,0.7,0.7]},text:""}
execute if score $present ff_plugin matches 1 run function fossil_frights:command/info_board/set_plugin_text
execute unless score $present ff_plugin matches 1 run function fossil_frights:command/info_board/set_trigger_text
