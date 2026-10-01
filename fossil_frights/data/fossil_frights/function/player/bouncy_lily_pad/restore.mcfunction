execute as @e[type=minecraft:item_display,tag=ff_bouncy_lily_pad_animating] run data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[1.0f,1.0f,1.0f]}}
tag @e[type=minecraft:item_display,tag=ff_bouncy_lily_pad_animating] remove ff_bouncy_lily_pad_animating
