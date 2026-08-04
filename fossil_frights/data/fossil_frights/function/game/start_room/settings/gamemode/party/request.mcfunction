execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
function fossil_frights:game/start_room/settings/gamemode/count_players
execute if score $settings_active_players ff_game_state matches 2.. run return run function fossil_frights:game/start_room/settings/gamemode/party/remove_dialog
function fossil_frights:game/start_room/settings/gamemode/party/apply
