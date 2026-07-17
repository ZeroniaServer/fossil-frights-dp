advancement revoke @s only fossil_frights:check_security_click
execute if score $heist_mode_active ff_game_state matches 1 run return 0
function fossil_frights:tasks/easy/check_security/complete
