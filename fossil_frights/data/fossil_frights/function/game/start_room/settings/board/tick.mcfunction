execute unless entity @e[tag=ff_settings_mode_frights_click,limit=1] run return 0
tag @e[type=minecraft:interaction,tag=ff_settings_board_entity,tag=!ff_settings_add_player_click,tag=!ff_settings_info_click] add ff_settings_info_click
execute as @a[tag=ff_settings_hovering] unless predicate fossil_frights:player/start_room/settings/looking_at unless predicate fossil_frights:player/start_room/settings/looking_at_add_player run title @s actionbar ""
tag @a remove ff_settings_hovering
execute as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at run tag @s add ff_settings_hovering
execute as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_add_player run tag @s add ff_settings_hovering
execute as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at run title @s actionbar {translate:"ff.settings.hover.info",color:"yellow",italic:false}
execute as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_add_player run title @s actionbar {translate:"ff.settings.hover.select",color:"yellow",italic:false}
execute if predicate fossil_frights:game_state/party_mode_active as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_speedrun run title @s actionbar {translate:"ff.settings.hover.frights_only",color:"gray",italic:false}
execute if predicate fossil_frights:game_state/heist_mode_active as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_speedrun run title @s actionbar {translate:"ff.settings.hover.frights_only",color:"gray",italic:false}
execute unless predicate fossil_frights:game_state/heist_mode_active as @a[team=ff_guard] if predicate fossil_frights:player/start_room/settings/looking_at_randomizer run title @s actionbar {translate:"ff.settings.hover.heists_only",color:"gray",italic:false}
scoreboard players add $settings_board_tick ff_game_state 1
execute if score $settings_board_tick ff_game_state matches 10.. run scoreboard players set $settings_board_tick ff_game_state 0
execute if score $settings_board_tick ff_game_state matches 0 run function fossil_frights:game/start_room/settings/board/refresh
