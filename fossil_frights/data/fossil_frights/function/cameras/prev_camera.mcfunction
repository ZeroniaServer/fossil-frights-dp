scoreboard players remove @s ff_security_camera 1
execute if score @s ff_security_camera matches ..0 run scoreboard players set @s ff_security_camera 10
scoreboard players set @s ff_security_camera_nav 8
function fossil_frights:cameras/select_camera
execute if score @s ff_security_camera_visible matches 0 run function fossil_frights:cameras/show_nav
function fossil_frights:cameras/update_camera_models
execute at @s run playsound fossil-frights:camera.switch master @s ~ ~ ~ 1 1
