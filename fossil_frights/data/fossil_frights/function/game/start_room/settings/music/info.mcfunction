advancement revoke @s only fossil_frights:start_room_setting_music_punch
execute if score $settings_music_off ff_game_state matches 1 run return run function fossil_frights:messages/settings/music_off
function fossil_frights:messages/settings/music_on
