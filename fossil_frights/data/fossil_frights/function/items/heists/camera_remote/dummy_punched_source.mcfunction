function fossil_frights:entity/match/active
execute as @a[limit=1,tag=ff_camera_remote_active,predicate=fossil_frights:entity/match/active] run function fossil_frights:items/heists/camera_remote/exit
kill @s
