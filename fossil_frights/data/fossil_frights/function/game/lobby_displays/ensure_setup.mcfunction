function fossil_frights:command/info_board/setup
function fossil_frights:command/info/lectern_setup
function fossil_frights:game/frights/timer/setup
function fossil_frights:game/frights/timer/update_display
function fossil_frights:game/start_room/day_tracker/setup
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/setup
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/board/setup
scoreboard players set $lobby_displays_ready ff_game_state 1
execute unless entity @e[type=minecraft:text_display,tag=ff_command_info_board,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_info_lectern_click,x=16,y=70,z=21,dx=1,dy=1,dz=1,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_info_lectern_click,x=0,y=109,z=55,dx=0,dy=0,dz=0,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_day_tracker,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_day_button_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_settings_mode_frights_click,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_start_room_setting_randomizer_click,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_settings_mode_frights_icon,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
