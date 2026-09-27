execute as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] store result score @s ff_camera_remote_health run data get entity @s Health 100
execute as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] if score @s ff_camera_remote_health < @s ff_camera_remote_health_prev run function fossil_frights:items/heists/camera_remote/dummy_damaged
execute as @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] run scoreboard players operation @s ff_camera_remote_health_prev = @s ff_camera_remote_health
