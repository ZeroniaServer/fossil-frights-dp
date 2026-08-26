tag @s add ff_rejoin_source
tag @e[type=minecraft:marker,tag=ff_rejoin_marker] remove ff_rejoin_match
execute as @e[type=minecraft:marker,tag=ff_rejoin_marker] if score @s ff_active_uuid_0 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_0 if score @s ff_active_uuid_1 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_1 if score @s ff_active_uuid_2 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_2 if score @s ff_active_uuid_3 = @a[tag=ff_rejoin_source,limit=1] ff_active_uuid_3 run tag @s add ff_rejoin_match
execute unless entity @e[type=minecraft:marker,tag=ff_rejoin_match] run function fossil_frights:game/rejoin/state/register_new
execute as @e[type=minecraft:marker,tag=ff_rejoin_match] run tag @s remove ff_rejoin_frights
execute as @e[type=minecraft:marker,tag=ff_rejoin_match] run tag @s remove ff_rejoin_heists_guard
execute as @e[type=minecraft:marker,tag=ff_rejoin_match] run tag @s remove ff_rejoin_heists_thief
execute as @e[type=minecraft:marker,tag=ff_rejoin_match] run tag @s remove ff_rejoin_camera
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_guard] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_heists_guard
execute if predicate fossil_frights:game_state/heist_mode_active if entity @s[team=ff_thief] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_heists_thief
execute unless predicate fossil_frights:game_state/heist_mode_active run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_frights
execute if entity @s[tag=ff_camera_remote_active] run tag @e[type=minecraft:marker,tag=ff_rejoin_match] add ff_rejoin_camera
function fossil_frights:game/rejoin/state/save_position
function fossil_frights:game/rejoin/state/save_head
tag @e[type=minecraft:marker,tag=ff_rejoin_match] remove ff_rejoin_match
tag @s remove ff_rejoin_source
