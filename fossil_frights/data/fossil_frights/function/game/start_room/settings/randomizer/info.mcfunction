advancement revoke @s only fossil_frights:start_room_setting_randomizer_punch
execute unless score $heist_mode_active ff_game_state matches 1.. run return run function fossil_frights:game/start_room/settings/randomizer/show_unavailable
execute if score $settings_randomizer_on ff_game_state matches 1 run return run function fossil_frights:messages/settings/random_on
function fossil_frights:messages/settings/random_off
