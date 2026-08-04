scoreboard players set $settings_spectators_prev ff_gui 0
execute unless score $settings_spectator_deny ff_game_state matches 1 run scoreboard players set $settings_spectators_prev ff_gui 1
scoreboard players set $settings_music_prev ff_gui 0
execute unless score $settings_music_off ff_game_state matches 1 run scoreboard players set $settings_music_prev ff_gui 1
scoreboard players set $settings_chat_prev ff_gui 0
execute unless score $settings_chat_hidden ff_game_state matches 1 run scoreboard players set $settings_chat_prev ff_gui 1
scoreboard players set $settings_speedrun_prev ff_gui 0
execute if score $settings_speedrun_show ff_game_state matches 1 run scoreboard players set $settings_speedrun_prev ff_gui 1
