execute unless entity @s[tag=ff_forced_spectate] run return 0
function fossil_frights:tasks/easy/security_camera/forced_spectate_return_macro with storage fossil_frights:forced_spectate return
gamemode adventure @s
tag @s remove ff_forced_spectate
setblock -28 70 38 air
setblock -27 70 36 air
tp @e[type=mannequin,tag=ff_security_camera_dummy] 0 -200 0
kill @e[type=mannequin,tag=ff_security_camera_dummy]
