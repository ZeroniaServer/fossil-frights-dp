advancement revoke @s only fossil_frights:start_room/settings/mode_party_punch
execute if score $settings_locked ff_game_state matches 1 run return 0
function fossil_frights:messages/settings/party_mode_dialog
