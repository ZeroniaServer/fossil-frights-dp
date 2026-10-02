tag @e[type=minecraft:mannequin,tag=ff_camera_remote_dummy] remove ff_rejoin_camera_match
function fossil_frights:entity/match/active
tag @e[limit=1,type=minecraft:mannequin,tag=ff_camera_remote_dummy,predicate=fossil_frights:entity/match/active] add ff_rejoin_camera_match
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] add ff_rejoin_ghost
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] add ff_rejoin_heists_guard
team join ff_guard @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match]
effect give @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] minecraft:resistance infinite 3 true
execute as @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] at @s run function fossil_frights:game/rejoin/ghost/spawn_display
tag @e[type=minecraft:mannequin,tag=ff_rejoin_camera_match] remove ff_rejoin_camera_match
