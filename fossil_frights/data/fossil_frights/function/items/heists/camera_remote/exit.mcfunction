execute unless entity @s[tag=ff_camera_remote_active] run return 0
function fossil_frights:cameras/lights_disabled/hide
execute store result storage fossil_frights:forced_spectate return.x double 0.00001 run scoreboard players get @s ff_forced_spec_x
execute store result storage fossil_frights:forced_spectate return.y double 0.001 run scoreboard players get @s ff_forced_spec_y
execute store result storage fossil_frights:forced_spectate return.z double 0.00001 run scoreboard players get @s ff_forced_spec_z
execute store result storage fossil_frights:forced_spectate return.yaw float 0.001 run scoreboard players get @s ff_forced_spec_yaw
execute store result storage fossil_frights:forced_spectate return.pitch float 0.001 run scoreboard players get @s ff_forced_spec_pitch
function fossil_frights:cameras/forced_spectate_return_macro with storage fossil_frights:forced_spectate return
gamemode adventure @s
tag @s remove ff_forced_spectate
tag @s remove ff_camera_remote_active
function fossil_frights:game/rejoin/state/clear_camera_current
function fossil_frights:items/heists/camera_remote/kill_owned
function fossil_frights:cameras/update_camera_models
execute at @s run playsound fossil-frights:camera.close master @s ~ ~ ~ 1 1
