execute unless predicate fossil_frights:game_state/hazard_active/lights run function fossil_frights:hazard/start/lights
execute if entity @s[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
execute if entity @s[tag=!ff_camera_remote_active] run function fossil_frights:cameras/forced_spectate_exit
