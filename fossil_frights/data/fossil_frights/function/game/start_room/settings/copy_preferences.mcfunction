execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run tag @s add ff_settings_spectator_deny
execute unless entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run tag @s remove ff_settings_spectator_deny
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run tag @s add ff_settings_music_off
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run tag @s remove ff_settings_music_off
execute if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run tag @s add ff_settings_chat_hidden
execute unless entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run tag @s remove ff_settings_chat_hidden
execute unless score $run_multiplayer ff_game_state matches 1 if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run tag @s add ff_settings_speedrun_show
execute unless score $run_multiplayer ff_game_state matches 1 unless entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run tag @s remove ff_settings_speedrun_show
execute if score $heist_mode_active ff_game_state matches 1 if entity @a[tag=ff_settings_randomizer_on,limit=1] run tag @s add ff_settings_randomizer_on
execute unless score $heist_mode_active ff_game_state matches 1 run tag @s remove ff_settings_randomizer_on
