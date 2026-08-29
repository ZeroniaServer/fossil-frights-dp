execute if score lights ff_hazard_active matches 0 run function fossil_frights:hazard/start/lights
execute if entity @s[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=!ff_camera_remote_active] run function fossil_frights:cameras/forced_spectate_exit
