advancement revoke @s only fossil_frights:start_room/settings/randomizer_click
execute unless function fossil_frights:game/start_room/settings/gamemode/can_change run return 0
execute unless score $settings_mode ff_game_state matches 2 run return 0
execute if score $settings_randomizer_on ff_game_state matches 1 run return run function fossil_frights:game/start_room/settings/randomizer/disable
function fossil_frights:game/start_room/settings/gamemode/count_players
execute if score $settings_active_players ff_game_state matches 2.. run return run function fossil_frights:game/start_room/settings/randomizer/remove_dialog
function fossil_frights:game/start_room/settings/randomizer/enable
