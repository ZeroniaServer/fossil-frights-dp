advancement revoke @s only fossil_frights:start_room_setting_speedrun_punch
execute if score $settings_speedrun_show ff_game_state matches 1 run return run function fossil_frights:messages/settings/speedrun_shown
function fossil_frights:messages/settings/speedrun_hidden
