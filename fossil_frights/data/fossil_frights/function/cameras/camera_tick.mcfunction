execute if score @s ff_security_camera_nav matches 1.. run scoreboard players remove @s ff_security_camera_nav 1
function fossil_frights:cameras/lights_disabled/update
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/left run function fossil_frights:cameras/prev_camera
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/right run function fossil_frights:cameras/next_camera
execute if score @s ff_security_camera_heist matches 1.. run scoreboard players remove @s ff_security_camera_heist 1
execute if score @s ff_security_camera_heist matches 0 if entity @s[tag=!ff_camera_lights_disabled_overlay] run function fossil_frights:cameras/show_nav
execute if score @s ff_security_camera_heist matches 0 if entity @s[tag=!ff_camera_lights_disabled_overlay,team=ff_guard] anchored feet facing entity @a[team=ff_thief] eyes run function fossil_frights:items/heists/camera_remote/highlight_thief/tick
function fossil_frights:cameras/update_camera_models
