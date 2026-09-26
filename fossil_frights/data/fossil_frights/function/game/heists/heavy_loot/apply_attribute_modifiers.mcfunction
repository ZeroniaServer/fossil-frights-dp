attribute @s minecraft:movement_speed modifier add fossil_frights:heavy_loot -0.45 add_multiplied_total

attribute @s[tag=!ff_ice_frozen,predicate=fossil_frights:entity/effects/luck] minecraft:air_drag_modifier modifier add fossil_frights:heavy_loot 2 add_multiplied_base
attribute @s[predicate=!fossil_frights:entity/effects/luck] minecraft:air_drag_modifier modifier remove fossil_frights:heavy_loot
attribute @s[tag=ff_ice_frozen] minecraft:air_drag_modifier modifier remove fossil_frights:heavy_loot

attribute @s[tag=ff_ice_frozen] minecraft:jump_strength modifier add fossil_frights:heavy_loot -1 add_multiplied_total
attribute @s[predicate=!fossil_frights:entity/effects/luck] minecraft:jump_strength modifier add fossil_frights:heavy_loot -1 add_multiplied_total
attribute @s[tag=!ff_ice_frozen,predicate=fossil_frights:entity/effects/luck] minecraft:jump_strength modifier remove fossil_frights:heavy_loot
