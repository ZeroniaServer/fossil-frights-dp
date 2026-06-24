# debug line
execute if entity @s[tag=debug] run particle minecraft:bubble ~ ~ ~ 0 0 0 0 1 force

# return if invalid
execute unless block ~ ~ ~ #fossil_frights:transparent run return fail
execute unless entity @p[tag=ff_heist_thief,dx=0] positioned ^ ^ ^0.25 run return run function fossil_frights:items/heists/camera_remote/highlight_thief/tick
execute unless function fossil_frights:items/heists/camera_remote/highlight_thief/thief_visible run return fail

# payload
title @s actionbar {translate:"", fallback:"%s Press %s to Report.", color:gray, with:[{translate:"", fallback:"Thief Visible!", color:yellow},{keybind:"key.back", color:white}]}
execute if predicate fossil_frights:player/input/backward run function fossil_frights:items/heists/camera_remote/highlight_thief/capture
