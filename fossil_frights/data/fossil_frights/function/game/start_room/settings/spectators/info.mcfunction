advancement revoke @s only fossil_frights:start_room/settings/spectators_punch
execute if score $settings_locked ff_game_state matches 1 run return 0
execute if score $settings_spectator_deny ff_game_state matches 1 run return run function fossil_frights:messages/settings/spectators_deny
function fossil_frights:messages/settings/spectators_allow
