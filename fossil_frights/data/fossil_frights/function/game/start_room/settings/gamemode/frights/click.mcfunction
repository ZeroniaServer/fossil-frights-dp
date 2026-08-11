advancement revoke @s only fossil_frights:start_room/settings/mode_frights_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless score $party_mode_active ff_game_state matches 1 unless score $heist_mode_active ff_game_state matches 1 run return 0
function fossil_frights:game/start_room/settings/gamemode/count_players
execute if score $settings_active_players ff_game_state matches 2.. run return run function fossil_frights:game/start_room/settings/gamemode/frights/remove_dialog
function fossil_frights:game/start_room/settings/gamemode/frights/apply
