scoreboard players add @s ff_security_camera 1
execute if score @s ff_security_camera matches 6.. run scoreboard players set @s ff_security_camera 1
scoreboard players set @s ff_security_camera_nav 8
function fossil_frights:tasks/easy/check_security/select_camera
function fossil_frights:tasks/easy/check_security/show_nav
