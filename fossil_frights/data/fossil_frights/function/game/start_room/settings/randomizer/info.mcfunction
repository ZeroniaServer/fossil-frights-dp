advancement revoke @s only fossil_frights:start_room/settings/randomizer_punch
execute if score $settings_locked ff_game_state matches 1 run return 0
execute unless predicate fossil_frights:game_state/heist_mode_active run return run function fossil_frights:game/start_room/settings/randomizer/show_unavailable
execute if score $settings_randomizer_on ff_game_state matches 1 run return run function fossil_frights:messages/settings/random_on
function fossil_frights:messages/settings/random_off
