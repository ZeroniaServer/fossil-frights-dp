data merge entity @s {start_interpolation:0,interpolation_duration:5,transformation:{scale:[0.8f,0.8f,0.8f]}}
tag @s add ff_bouncy_lily_pad_animating
particle minecraft:bubble ~ ~1 ~ 0.5 0.2 0.5 0 20 force
schedule function fossil_frights:player/bouncy_lily_pad/restore 5t append
