function fossil_frights:game/start_room/info_board/setup
function fossil_frights:command/info/lectern_setup
function fossil_frights:game/timer/setup
function fossil_frights:game/timer/update_display
function fossil_frights:game/start_room/day_tracker/setup
function fossil_frights:game/start_room/day_tracker/refresh
function fossil_frights:game/start_room/day_button/setup
function fossil_frights:game/start_room/day_button/refresh
function fossil_frights:game/start_room/settings/spectator_toggle/setup
function fossil_frights:game/start_room/settings/spectator_toggle/refresh
function fossil_frights:game/start_room/settings/setting2/setup
function fossil_frights:game/start_room/settings/setting2/refresh
function fossil_frights:game/start_room/settings/multiplayer/setup
function fossil_frights:game/start_room/settings/party_mode/setup
function fossil_frights:game/start_room/settings/party_mode/refresh
function fossil_frights:game/start_room/settings/heists/setup
function fossil_frights:game/start_room/settings/heists/refresh
function fossil_frights:game/start_room/settings/setting3/setup
function fossil_frights:game/start_room/settings/setting3/refresh
function fossil_frights:game/start_room/settings/speedrun_toggle/setup
function fossil_frights:game/start_room/settings/speedrun_toggle/refresh
scoreboard players set $lobby_displays_ready ff_game_state 1
execute unless entity @e[type=minecraft:text_display,tag=ff_command_info_board,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_info_lectern_click,x=16,y=70,z=21,dx=1,dy=1,dz=1,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_info_lectern_click,x=0,y=109,z=55,dx=0,dy=0,dz=0,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_game_timer,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_day_tracker,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_day_button_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_spectator_toggle_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_setting2_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:interaction,tag=ff_multiplayer_click,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_party_mode_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_heists_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_setting3_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
execute unless entity @e[type=minecraft:text_display,tag=ff_speedrun_toggle_label,limit=1] run scoreboard players set $lobby_displays_ready ff_game_state 0
