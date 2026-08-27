execute if entity @s[tag=debug] run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 force

execute unless block ~ ~ ~ #fossil_frights:camera_thief_capture_raycast_ignore run return fail
execute unless entity @p[team=ff_thief,dx=0] positioned ^ ^ ^0.25 run return run function fossil_frights:items/heists/camera_remote/highlight_thief/tick
execute unless function fossil_frights:items/heists/camera_remote/highlight_thief/thief_visible run return fail

tag @s add ff_camera_thief_visible
scoreboard players set @s ff_security_camera_visible 3
title @s actionbar {translate:"", fallback:"%s Press %s to Report.", color:gray, with:[{translate:"", fallback:"Thief Visible!", color:yellow},{keybind:"key.back", color:white}]}
execute if predicate fossil_frights:player/input/backward run function fossil_frights:items/heists/camera_remote/highlight_thief/capture
