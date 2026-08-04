execute unless entity @e[tag=ff_settings_mode_frights_click,limit=1] run return 0
scoreboard players add $settings_board_tick ff_game_state 1
execute if score $settings_board_tick ff_game_state matches 10.. run scoreboard players set $settings_board_tick ff_game_state 0
execute if score $settings_board_tick ff_game_state matches 0 run function fossil_frights:game/start_room/settings/board/refresh
