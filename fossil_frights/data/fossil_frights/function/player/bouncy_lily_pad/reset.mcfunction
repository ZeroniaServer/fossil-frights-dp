execute as @e[type=minecraft:item_display,tag=bouncy_lily_pad] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{scale:[1.0f,1.0f,1.0f]}}
execute as @e[type=minecraft:item_display,tag=boucy_lily_pad] run data merge entity @s {start_interpolation:0,interpolation_duration:1,transformation:{scale:[1.0f,1.0f,1.0f]}}
tag @e[type=minecraft:item_display,tag=bouncy_lily_pad] remove ff_bouncy_lily_pad_animating
tag @e[type=minecraft:item_display,tag=boucy_lily_pad] remove ff_bouncy_lily_pad_animating
