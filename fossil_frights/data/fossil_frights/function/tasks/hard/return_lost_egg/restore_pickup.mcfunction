scoreboard players set $return_lost_egg_picked ff_task_state 0
function fossil_frights:tasks/hard/return_lost_egg/spawn
execute as @e[type=#fossil_frights:display_entities,tag=ff_lost_egg] run data modify entity @s view_range set value 1
