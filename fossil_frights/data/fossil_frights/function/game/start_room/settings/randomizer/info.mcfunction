advancement revoke @s only fossil_frights:start_room_setting_randomizer_punch
execute if score $settings_randomizer_on ff_game_state matches 1 run return run function fossil_frights:messages/settings/random_on
function fossil_frights:messages/settings/random_off
