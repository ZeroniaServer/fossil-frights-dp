scoreboard players set $settings_spectators_prev ff_gui 0
execute unless entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run scoreboard players set $settings_spectators_prev ff_gui 1
scoreboard players set $settings_music_prev ff_gui 0
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run scoreboard players set $settings_music_prev ff_gui 1
scoreboard players set $settings_chat_prev ff_gui 0
execute unless entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run scoreboard players set $settings_chat_prev ff_gui 1
scoreboard players set $settings_speedrun_prev ff_gui 0
execute if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run scoreboard players set $settings_speedrun_prev ff_gui 1
