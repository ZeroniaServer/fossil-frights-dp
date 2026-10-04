# Track player position and rotation
execute unless entity @s[tag=ff_forced_spectate] run tag @s remove ff_forced_spectate_rejoin_saved
execute if entity @s[tag=ff_camera_remote_active] run function fossil_frights:game/rejoin/state/save_camera_position
execute if entity @s[tag=ff_forced_spectate,tag=!ff_forced_spectate_rejoin_saved] unless entity @s[tag=ff_camera_remote_active] run function fossil_frights:game/rejoin/state/save_forced_spectate_position
execute unless entity @s[tag=ff_camera_remote_active] unless entity @s[tag=ff_forced_spectate] at @s rotated as @s run tp @e[type=minecraft:marker,tag=ff_rejoin_match] ~ ~ ~ ~ ~
