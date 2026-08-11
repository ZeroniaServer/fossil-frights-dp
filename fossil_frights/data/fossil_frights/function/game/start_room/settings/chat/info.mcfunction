advancement revoke @s only fossil_frights:start_room/settings/chat_punch
execute if score $settings_chat_hidden ff_game_state matches 1 run return run function fossil_frights:messages/settings/chat_hidden
function fossil_frights:messages/settings/chat_visible
