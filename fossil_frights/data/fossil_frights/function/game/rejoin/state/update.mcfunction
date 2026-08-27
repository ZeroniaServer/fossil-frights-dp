tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_online
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_frights
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_heists_guard
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_heists_thief
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_heists_guard
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_thief] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_heists_thief
execute unless predicate fossil_frights:game_state/heist_mode_active run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_frights
execute if entity @s[tag=ff_camera_remote_active] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_camera
execute unless entity @s[tag=ff_camera_remote_active] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_camera
function fossil_frights:game/rejoin/state/save_position
function fossil_frights:game/rejoin/state/save_head
