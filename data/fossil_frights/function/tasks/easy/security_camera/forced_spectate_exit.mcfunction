execute unless entity @s[tag=ff_forced_spectate] run return 0
function fossil_frights:tasks/easy/security_camera/forced_spectate_return_macro with storage fossil_frights:forced_spectate return
gamemode adventure @s
tag @s remove ff_forced_spectate
