execute if score @s ff_security_camera_nav matches 1.. run scoreboard players remove @s ff_security_camera_nav 1
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/left run function fossil_frights:tasks/easy/check_security/prev_camera
execute if score @s ff_security_camera_nav matches 0 if predicate fossil_frights:player/input/right run function fossil_frights:tasks/easy/check_security/next_camera
function fossil_frights:tasks/easy/check_security/show_nav
function fossil_frights:tasks/easy/check_security/update_camera_models
