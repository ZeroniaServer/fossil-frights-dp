tag @s add ff_return_position_source
execute at @s summon minecraft:marker run function fossil_frights:cameras/forced_spectate_get_position
tag @s remove ff_return_position_source
