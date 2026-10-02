execute as @a[limit=1,tag=ff_rejoin_source] run function fossil_frights:entity/match/active
tp @e[type=minecraft:marker,tag=ff_rejoin_match] @e[limit=1,type=minecraft:mannequin,tag=ff_camera_remote_dummy,predicate=fossil_frights:entity/match/active]
