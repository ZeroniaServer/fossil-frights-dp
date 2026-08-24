advancement revoke @s only fossil_frights:items/camera_remote/consume
tag @s add ff_camera_remote_restore_pending
execute unless predicate fossil_frights:game_state/heist_mode_active run return 0
execute unless entity @s[team=ff_guard,gamemode=!spectator] run return 0
execute if entity @s[tag=ff_forced_spectate] run return 0
function fossil_frights:items/heists/camera_remote/start
