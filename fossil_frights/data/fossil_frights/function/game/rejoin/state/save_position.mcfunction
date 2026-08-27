# Track player position and rotation
execute if entity @s[tag=ff_camera_remote_active] run function fossil_frights:game/rejoin/state/save_camera_position
execute unless entity @s[tag=ff_camera_remote_active] at @s rotated as @s run tp @e[type=minecraft:marker,tag=ff_rejoin_match] ~ ~ ~ ~ ~
