execute as @e[type=minecraft:item_display,tag=ff_holy_grail.complete] run data merge entity @s {start_interpolation:0,interpolation_duration:1,teleport_duration:1,transformation:{translation:[0f,0.5f,0f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
tag @e[type=minecraft:item_display,tag=ff_holy_grail.complete] remove ff_holy_grail.complete
