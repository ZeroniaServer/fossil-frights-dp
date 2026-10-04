execute store result storage fossil_frights:rejoin forced_spectate.x double 0.00001 run scoreboard players get @s ff_forced_spec_x
execute store result storage fossil_frights:rejoin forced_spectate.y double 0.00001 run scoreboard players get @s ff_forced_spec_y
execute store result storage fossil_frights:rejoin forced_spectate.z double 0.00001 run scoreboard players get @s ff_forced_spec_z
execute store result storage fossil_frights:rejoin forced_spectate.yaw float 0.001 run scoreboard players get @s ff_forced_spec_yaw
execute store result storage fossil_frights:rejoin forced_spectate.pitch float 0.001 run scoreboard players get @s ff_forced_spec_pitch
function fossil_frights:game/rejoin/state/save_forced_spectate_position_macro with storage fossil_frights:rejoin forced_spectate
tag @s add ff_forced_spectate_rejoin_saved
