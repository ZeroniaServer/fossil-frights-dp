execute unless entity @e[tag=ff_settings_mode_frights_click,limit=1] run return 0
tag @e[type=minecraft:interaction,tag=ff_settings_board_entity,tag=!ff_settings_add_player_click,tag=!ff_settings_info_click] add ff_settings_info_click

execute as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at run function fossil_frights:player/actionbar/show/hovered_info/settings_hover_info
execute as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_add_player run function fossil_frights:player/actionbar/show/hovered_info/settings_hover_select
execute unless predicate fossil_frights:world/packs_enabled/plugin as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_chat run function fossil_frights:player/actionbar/show/hovered_info/settings_hover_not_available
execute if predicate fossil_frights:game_state/party_mode_active as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_speedrun run function fossil_frights:player/actionbar/show/hovered_info/settings_hover_frights_only
execute if predicate fossil_frights:game_state/heist_mode_active as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_speedrun run function fossil_frights:player/actionbar/show/hovered_info/settings_hover_frights_only
execute unless predicate fossil_frights:game_state/heist_mode_active as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_randomizer run function fossil_frights:player/actionbar/show/hovered_info/settings_hover_heists_only
scoreboard players add $settings_board_tick ff_game_state 1
execute if score $settings_board_tick ff_game_state matches 10.. run scoreboard players set $settings_board_tick ff_game_state 0
execute if score $settings_board_tick ff_game_state matches 0 run function fossil_frights:game/start_room/settings/board/refresh
