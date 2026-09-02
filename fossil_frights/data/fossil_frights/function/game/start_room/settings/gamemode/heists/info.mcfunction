advancement revoke @s only fossil_frights:start_room/settings/mode_heists_punch
execute if score $settings_locked ff_game_state matches 1 run return 0
function fossil_frights:messages/settings/heists_dialog
