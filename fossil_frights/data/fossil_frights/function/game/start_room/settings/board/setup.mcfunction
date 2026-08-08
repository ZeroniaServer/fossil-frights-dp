function fossil_frights:game/start_room/settings/board/cleanup_legacy
kill @e[tag=ff_settings_board_entity,tag=!ff_settings_board_model]

# Top row
summon minecraft:text_display 16.125625 72.12875 27.71875 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_mode_frights_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 72.12875 27.03125 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_mode_party_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 72.12875 26.34375 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_mode_heists_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 72.12875 25.65625 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_add_player_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 71.87875 24.96875 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_primary_head"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2.0625f,2.0625f,2.0625f]}}

# Mode labels
summon minecraft:text_display 16.125625 71.95875 27.59375 {Tags:["ff_settings_board_entity","ff_settings_mode_label_frights"],billboard:"fixed",Rotation:[270f,0f],alignment:"left",background:0,shadow:true,text_opacity:0b,text:[{translate:"ff.settings.board.gamemode.frights",color:"white"}],transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]}}
summon minecraft:text_display 16.125625 71.95875 27.71375 {Tags:["ff_settings_board_entity","ff_settings_mode_label_party"],billboard:"fixed",Rotation:[270f,0f],alignment:"left",background:0,shadow:true,text_opacity:0b,text:[{translate:"ff.settings.board.gamemode.party",color:"white"}],transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]}}
summon minecraft:text_display 16.125625 71.95875 27.67375 {Tags:["ff_settings_board_entity","ff_settings_mode_label_heists"],billboard:"fixed",Rotation:[270f,0f],alignment:"left",background:0,shadow:true,text_opacity:0b,text:[{translate:"ff.settings.board.gamemode.heists",color:"white"}],transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.65f,0.65f,0.65f]}}
summon minecraft:text_display 16.125625 71.95875 25.24375 {Tags:["ff_settings_board_entity","ff_settings_players_label"],billboard:"fixed",Rotation:[270f,0f],alignment:"right",background:0,brightness:{block:15,sky:15},default_background:0b,line_width:200,see_through:0b,shadow:1b,text_opacity:-1b,text:"",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.65f,0.64999986f,0.6499999f],translation:[0f,0f,0f]}}
summon minecraft:text_display 16.125625 72.37875 25.24375 {Tags:["ff_settings_board_entity","ff_settings_team_counts_label"],billboard:"fixed",Rotation:[270f,0f],alignment:"right",background:0,brightness:{block:15,sky:15},default_background:0b,line_width:200,see_through:0b,shadow:1b,text_opacity:-1b,text:"",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.65f,0.64999986f,0.6499999f],translation:[0f,0f,0f]}}

# Bottom row
summon minecraft:text_display 16.125625 71.37375 27.71875 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_music_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 71.37375 27.03125 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_spectators_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 71.37375 26.34375 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_chat_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 71.37375 25.65625 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_speedrun_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 71.37375 24.96875 {Tags:["ff_settings_board_entity","ff_settings_icon","ff_settings_randomizer_icon"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:false,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
summon minecraft:text_display 16.125625 71.26875 27.84375 {Tags:["ff_settings_board_entity","ff_settings_music_label"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:true,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 16.125625 71.26875 27.19375 {Tags:["ff_settings_board_entity","ff_settings_spectators_label"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:true,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 16.125625 71.26875 26.54375 {Tags:["ff_settings_board_entity","ff_settings_chat_label"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:true,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 16.125625 71.26875 25.89375 {Tags:["ff_settings_board_entity","ff_settings_speedrun_label"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:true,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}
summon minecraft:text_display 16.125625 71.26875 25.24375 {Tags:["ff_settings_board_entity","ff_settings_randomizer_label"],billboard:"fixed",Rotation:[270f,0f],background:0,shadow:true,text:"",transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]}}

# Buttons
summon minecraft:interaction 16.00 72.12875 27.71875 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_settings_mode_frights_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 72.12875 27.03125 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_settings_mode_party_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 72.12875 26.34375 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_settings_mode_heists_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 72.12875 25.65625 {Tags:["ff_settings_board_entity","ff_settings_add_player_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 71.37375 27.71875 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_start_room_setting_music_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 71.37375 27.03125 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_start_room_setting_spectators_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 71.37375 26.34375 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_start_room_setting_chat_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 71.37375 25.65625 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_start_room_setting_speedrun_click"],width:0.66f,height:0.66f,response:true}
summon minecraft:interaction 16.00 71.37375 24.96875 {Tags:["ff_settings_board_entity","ff_settings_info_click","ff_start_room_setting_randomizer_click"],width:0.66f,height:0.66f,response:true}

# Board positions.
tp @e[type=minecraft:text_display,tag=ff_settings_mode_frights_icon,limit=1] 16.125625 72.25 27.96875
tp @e[type=minecraft:text_display,tag=ff_settings_mode_party_icon,limit=1] 16.125625 72.25 27.28125
tp @e[type=minecraft:text_display,tag=ff_settings_mode_heists_icon,limit=1] 16.125625 72.25 26.59375
tp @e[type=minecraft:text_display,tag=ff_settings_add_player_icon,limit=1] 16.125625 72.25 25.90625
tp @e[type=minecraft:text_display,tag=ff_settings_primary_head,limit=1] 16.125625 72.1875 25.21875
tp @e[type=minecraft:text_display,tag=ff_settings_mode_label_frights,limit=1] 16.125625 72.0625 27.4375
tp @e[type=minecraft:text_display,tag=ff_settings_mode_label_party,limit=1] 16.125625 72.0625 27.4867655
tp @e[type=minecraft:text_display,tag=ff_settings_mode_label_heists,limit=1] 16.125625 72.0625 27.4375
tp @e[type=minecraft:text_display,tag=ff_settings_players_label,limit=1] 16.125625 72.0625 25.158598
tp @e[type=minecraft:text_display,tag=ff_settings_team_counts_label,limit=1] 16.125625 72.0625 25.21875
tp @e[type=minecraft:text_display,tag=ff_settings_music_icon,limit=1] 16.125625 71.37375 27.96875
tp @e[type=minecraft:text_display,tag=ff_settings_spectators_icon,limit=1] 16.125625 71.37375 27.28125
tp @e[type=minecraft:text_display,tag=ff_settings_chat_icon,limit=1] 16.125625 71.37375 26.59375
tp @e[type=minecraft:text_display,tag=ff_settings_speedrun_icon,limit=1] 16.125625 71.37375 25.90625
tp @e[type=minecraft:text_display,tag=ff_settings_randomizer_icon,limit=1] 16.125625 71.37375 25.21875
tp @e[type=minecraft:text_display,tag=ff_settings_music_label,limit=1] 16.125625 71.26875 27.96875
tp @e[type=minecraft:text_display,tag=ff_settings_spectators_label,limit=1] 16.125625 71.26875 27.28125
tp @e[type=minecraft:text_display,tag=ff_settings_chat_label,limit=1] 16.125625 71.26875 26.59375
tp @e[type=minecraft:text_display,tag=ff_settings_speedrun_label,limit=1] 16.125625 71.26875 25.90625
tp @e[type=minecraft:text_display,tag=ff_settings_randomizer_label,limit=1] 16.125625 71.26875 25.21875
tp @e[type=minecraft:interaction,tag=ff_settings_mode_frights_click,limit=1] 16 72.25 27.96875
tp @e[type=minecraft:interaction,tag=ff_settings_mode_party_click,limit=1] 16 72.25 27.28125
tp @e[type=minecraft:interaction,tag=ff_settings_mode_heists_click,limit=1] 16 72.25 26.59375
tp @e[type=minecraft:interaction,tag=ff_settings_add_player_click,limit=1] 16 72.25 25.90625
tp @e[type=minecraft:interaction,tag=ff_start_room_setting_music_click,limit=1] 16 71.37375 27.96875
tp @e[type=minecraft:interaction,tag=ff_start_room_setting_spectators_click,limit=1] 16 71.37375 27.28125
tp @e[type=minecraft:interaction,tag=ff_start_room_setting_chat_click,limit=1] 16 71.37375 26.59375
tp @e[type=minecraft:interaction,tag=ff_start_room_setting_speedrun_click,limit=1] 16 71.37375 25.90625
tp @e[type=minecraft:interaction,tag=ff_start_room_setting_randomizer_click,limit=1] 16 71.37375 25.21875
# Final board alignment.
execute as @e[type=minecraft:text_display,tag=ff_settings_board_entity,tag=!ff_settings_board_model] at @s run tp @s ~ ~ ~-0.0625
execute as @e[type=minecraft:text_display,tag=ff_settings_players_label,limit=1] run tp @s 16.125625 72.0625 25.096098
execute as @e[type=minecraft:text_display,tag=ff_settings_team_counts_label,limit=1] run tp @s 16.125625 72.0625 25.15625
execute as @e[type=minecraft:interaction,tag=ff_settings_board_entity] at @s run tp @s ~-0.5 ~-0.125 ~-0.0625
scoreboard players set $settings_board_tick ff_game_state 0
function fossil_frights:game/start_room/settings/board/refresh
