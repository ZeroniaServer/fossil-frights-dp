execute unless entity @s[tag=ff_camera_remote_active] run return 0
function fossil_frights:tasks/easy/check_security/forced_spectate_return_macro with storage fossil_frights:forced_spectate return
gamemode adventure @s
tag @s remove ff_forced_spectate
tag @s remove ff_camera_remote_active
function fossil_frights:items/heists/camera_remote/kill_owned
