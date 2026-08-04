execute if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run tag @a[team=ff_guard] add ff_muted_chat
execute unless entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run tag @a[team=ff_guard] remove ff_muted_chat
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run stopsound @a music
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run stopsound @a record
function fossil_frights:game/start_room/settings/board/refresh
