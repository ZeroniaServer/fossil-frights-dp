advancement revoke @s only fossil_frights:tasks/easy/check_security/click
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard,gamemode=!spectator] run return run function fossil_frights:items/heists/camera_remote/start
function fossil_frights:tasks/easy/check_security/complete
