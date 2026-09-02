execute as @e[type=#fossil_frights:display_entities,tag=ff_smelly_toilet_stall_sign] run data modify entity @s view_range set value 0
execute as @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{scale:[0,0,0]}}
