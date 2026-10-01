execute as @e[type=minecraft:item_display,tag=ff_bouncy_lily_pad_animating] run data modify entity @s transformation set from entity @s data.original_transformation
execute as @e[type=minecraft:item_display,tag=ff_bouncy_lily_pad_animating] run data merge entity @s {start_interpolation:0,interpolation_duration:5}
execute as @e[type=minecraft:item_display,tag=ff_bouncy_lily_pad_animating] run data remove entity @s data.original_transformation

tag @e[type=minecraft:item_display,tag=ff_bouncy_lily_pad_animating] remove ff_bouncy_lily_pad_animating
