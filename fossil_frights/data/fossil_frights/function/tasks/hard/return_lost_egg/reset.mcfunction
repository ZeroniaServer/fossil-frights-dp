function fossil_frights:tasks/hard/return_lost_egg/cleanup
execute as @e[type=#fossil_frights:display_entities,tag=ff_found_egg] run data modify entity @s view_range set value 0
scoreboard players set $return_lost_egg_picked ff_task_state 0
advancement revoke @a only fossil_frights:tasks/hard/return_lost_egg/pickup_click
