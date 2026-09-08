execute as @e[type=minecraft:item_display,tag=ff_decorated_pot.wiggle.reject] run data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.5f,0f],scale:[2f,2f,2f],left_rotation:[0f,-0.10452846f,0f,0.99452190f],right_rotation:[0f,0f,0f,1f]}}
schedule function fossil_frights:interactions/decorated_pots/wiggle/reject_end 2t replace
