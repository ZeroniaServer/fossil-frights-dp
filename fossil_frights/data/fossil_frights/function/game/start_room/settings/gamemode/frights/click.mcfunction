advancement revoke @s only fossil_frights:start_room/settings/mode_frights_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless predicate fossil_frights:game_state/party_mode_active unless predicate fossil_frights:game_state/heist_mode_active run return 0
function fossil_frights:game/start_room/settings/gamemode/count_players
execute if score $settings_active_players ff_game_state matches 2.. run return run function fossil_frights:game/start_room/settings/gamemode/frights/remove_dialog
function fossil_frights:game/start_room/settings/gamemode/frights/apply
