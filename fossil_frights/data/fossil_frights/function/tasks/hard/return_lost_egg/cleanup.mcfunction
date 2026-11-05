kill @e[type=minecraft:interaction,tag=ff_return_lost_egg_click]
execute as @e[type=#fossil_frights:display_entities,tag=ff_lost_egg] run data modify entity @s view_range set value 0
