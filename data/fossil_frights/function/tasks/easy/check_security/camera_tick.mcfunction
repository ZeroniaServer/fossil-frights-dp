execute if score @s ff_security_camera_nav matches 1.. run scoreboard players remove @s ff_security_camera_nav 1
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/left run function fossil_frights:tasks/easy/check_security/prev_camera
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/right run function fossil_frights:tasks/easy/check_security/next_camera
execute if score @s ff_security_camera_heist matches 1.. run scoreboard players remove @s ff_security_camera_heist 1
execute if score @s ff_security_camera_heist matches 0 run function fossil_frights:tasks/easy/check_security/show_nav
execute if score @s ff_security_camera_heist matches 0 if entity @s[tag=ff_heist_guard] anchored feet facing entity @a[tag=ff_heist_thief] eyes run function fossil_frights:items/heists/camera_remote/highlight_thief/tick
function fossil_frights:tasks/easy/check_security/update_camera_models