function fossil_frights:tasks/medium/ancient_portal/cleanup
execute as @e[type=#fossil_frights:display_entities,tag=ff_ancient_portal] run data modify entity @s view_range set value 0
