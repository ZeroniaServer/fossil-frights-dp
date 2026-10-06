execute as @a run function fossil_frights:cameras/clear_posteffect
execute as @a run posteffect remove @s fossil_frights:glitch
execute as @a run function fossil_frights:cameras/lights_disabled/hide
execute as @a[tag=ff_forced_spectate] run function fossil_frights:cameras/forced_spectate_exit
execute as @a[tag=ff_camera_remote_active] run function fossil_frights:items/heists/camera_remote/exit
