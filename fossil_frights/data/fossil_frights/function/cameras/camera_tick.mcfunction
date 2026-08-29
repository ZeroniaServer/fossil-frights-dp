execute unless entity @e[type=cave_spider,tag=security_camera,distance=..0.5] if entity @s[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
execute unless entity @e[type=cave_spider,tag=security_camera,distance=..0.5] if entity @s[tag=!ff_camera_remote_active] run function fossil_frights:cameras/forced_spectate_exit
execute unless entity @s[tag=ff_forced_spectate] run return 0
execute if score @s ff_security_camera_nav matches 1.. run scoreboard players remove @s ff_security_camera_nav 1
execute if score @s ff_security_camera_visible matches 1.. run scoreboard players remove @s ff_security_camera_visible 1
function fossil_frights:cameras/lights_disabled/update
execute if score @s ff_security_camera_heist matches 1.. run scoreboard players remove @s ff_security_camera_heist 1
tag @s remove ff_camera_thief_visible
execute if score @s ff_security_camera_heist matches 0 if entity @s[tag=!ff_camera_lights_disabled_overlay,team=ff_guard] anchored feet facing entity @a[team=ff_thief] eyes run function fossil_frights:items/heists/camera_remote/highlight_thief/tick
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/left run function fossil_frights:cameras/prev_camera
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/right run function fossil_frights:cameras/next_camera
execute if score @s ff_security_camera_heist matches 0 if score @s ff_security_camera_visible matches 0 if entity @s[tag=!ff_camera_lights_disabled_overlay] run function fossil_frights:cameras/show_nav
function fossil_frights:cameras/update_camera_models
