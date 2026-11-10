function fossil_frights:entity/match/active
execute unless entity @a[predicate=fossil_frights:entity/match/active] run kill @e[type=minecraft:item_display,tag=fog_marker,tag=ff_snowstorm_fog_marker,predicate=fossil_frights:entity/match/active]
tag @s add ff_snowstorm_fog_marker_keep
execute if entity @a[predicate=fossil_frights:entity/match/active] run kill @e[type=minecraft:item_display,tag=fog_marker,tag=ff_snowstorm_fog_marker,tag=!ff_snowstorm_fog_marker_keep,predicate=fossil_frights:entity/match/active]
tag @s remove ff_snowstorm_fog_marker_keep
