advancement revoke @s only fossil_frights:start_room/settings/speedrun_punch
execute if predicate fossil_frights:game_state/party_mode_active run return run function fossil_frights:game/start_room/settings/speedrun/show_unavailable
execute if predicate fossil_frights:game_state/heist_mode_active run return run function fossil_frights:game/start_room/settings/speedrun/show_unavailable
execute if score $settings_speedrun_show ff_game_state matches 1 run return run function fossil_frights:messages/settings/speedrun_shown
function fossil_frights:messages/settings/speedrun_hidden
