tag @s add ff_return_position_source
function fossil_frights:entity/match/active
execute as @e[limit=1,type=minecraft:mannequin,tag=ff_camera_remote_dummy,predicate=fossil_frights:entity/match/active] at @s summon minecraft:marker run function fossil_frights:cameras/forced_spectate_get_position
tag @s remove ff_return_position_source
