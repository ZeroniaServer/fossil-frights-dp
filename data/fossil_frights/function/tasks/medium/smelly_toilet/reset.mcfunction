setblock 24 81 8 minecraft:air
execute as @e[limit=1,type=item_display,tag=ff_task_smelly_toilet] run data merge entity @s {start_interpolation:0,interpolation_duration:30,transformation:{scale:[0,0,0]}}
