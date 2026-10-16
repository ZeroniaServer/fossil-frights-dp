tp @s ~ ~ ~ facing entity @p[tag=ff_camera_remote_active,predicate=fossil_frights:player/team/guard] eyes
execute store result score .degree0 ff_dummy run data get entity @s Rotation[0] 1
execute store result score .degree1 ff_dummy run data get entity @s Rotation[1] 1
kill @s[type=minecraft:marker]
