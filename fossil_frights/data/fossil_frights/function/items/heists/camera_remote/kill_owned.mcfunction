function fossil_frights:entity/match/active
execute as @e[limit=1,type=minecraft:mannequin,tag=ff_camera_remote_dummy,predicate=fossil_frights:entity/match/active] run function fossil_frights:util/entity/kill_discretely
