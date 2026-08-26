execute store result storage fossil_frights:rejoin position.x double 0.001 run scoreboard players get @s ff_rejoin_pos_x
execute store result storage fossil_frights:rejoin position.y double 0.001 run scoreboard players get @s ff_rejoin_pos_y
execute store result storage fossil_frights:rejoin position.z double 0.001 run scoreboard players get @s ff_rejoin_pos_z
execute store result storage fossil_frights:rejoin position.yaw float 0.01 run scoreboard players get @s ff_rejoin_yaw
execute store result storage fossil_frights:rejoin position.pitch float 0.01 run scoreboard players get @s ff_rejoin_pitch
function fossil_frights:game/rejoin/ghost/position_marker_macro with storage fossil_frights:rejoin position
