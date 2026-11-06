advancement revoke @s only fossil_frights:camera_remote_dummy/punch
tag @s add ff_heist_camera_punch
function fossil_frights:game/heists/punch/guard
tag @s remove ff_heist_camera_punch
execute at @s as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy,distance=..4,sort=nearest,limit=1] run function fossil_frights:items/heists/camera_remote/dummy_punched_source
