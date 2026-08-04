execute if score $settings_chat_hidden ff_game_state matches 1 run tag @a[team=ff_guard] add ff_muted_chat
execute unless score $settings_chat_hidden ff_game_state matches 1 run tag @a[team=ff_guard] remove ff_muted_chat
execute if score $settings_music_off ff_game_state matches 1 run stopsound @a music
execute if score $settings_music_off ff_game_state matches 1 run stopsound @a record
function fossil_frights:game/start_room/settings/board/refresh
