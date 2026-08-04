scoreboard players set $settings_music_off ff_game_state 0
execute if entity @s[tag=ff_settings_music_off] run scoreboard players set $settings_music_off ff_game_state 1
scoreboard players set $settings_spectator_deny ff_game_state 0
execute if entity @s[tag=ff_settings_spectator_deny] run scoreboard players set $settings_spectator_deny ff_game_state 1
scoreboard players set $settings_chat_hidden ff_game_state 0
execute if entity @s[tag=ff_settings_chat_hidden] run scoreboard players set $settings_chat_hidden ff_game_state 1
scoreboard players set $settings_speedrun_show ff_game_state 0
execute if entity @s[tag=ff_settings_speedrun_show] run scoreboard players set $settings_speedrun_show ff_game_state 1
scoreboard players set $settings_randomizer_on ff_game_state 0
execute if entity @s[tag=ff_settings_randomizer_on] run scoreboard players set $settings_randomizer_on ff_game_state 1
