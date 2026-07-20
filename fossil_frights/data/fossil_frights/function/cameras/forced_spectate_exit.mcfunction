execute unless entity @s[tag=ff_forced_spectate] run return 0
function fossil_frights:cameras/lights_disabled/hide
execute store result storage fossil_frights:forced_spectate return.x double 0.00001 run scoreboard players get @s ff_forced_spec_x
execute store result storage fossil_frights:forced_spectate return.y double 0.001 run scoreboard players get @s ff_forced_spec_y
execute store result storage fossil_frights:forced_spectate return.z double 0.00001 run scoreboard players get @s ff_forced_spec_z
execute store result storage fossil_frights:forced_spectate return.yaw float 0.001 run scoreboard players get @s ff_forced_spec_yaw
execute store result storage fossil_frights:forced_spectate return.pitch float 0.001 run scoreboard players get @s ff_forced_spec_pitch
function fossil_frights:cameras/forced_spectate_return_macro with storage fossil_frights:forced_spectate return
gamemode adventure @s
tag @s remove ff_forced_spectate
setblock -28 70 38 air
setblock -27 70 36 air
tp @e[type=mannequin,tag=ff_check_security_dummy] 0 -200 0
kill @e[type=mannequin,tag=ff_check_security_dummy]
function fossil_frights:cameras/update_camera_models
execute at @s run playsound fossil-frights:camera.close master @s ~ ~ ~ 1 1
