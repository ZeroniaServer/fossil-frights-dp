function fossil_frights:interactions/decorated_pots/interact/accept/effect
data merge entity @s {start_interpolation:0,interpolation_duration:1,teleport_duration:1,transformation:{translation:[0f,0.5f,0f],scale:[2f,2f,2f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f]},Rotation:[0f,0f]}
tag @s add ff_holy_grail.complete
schedule function fossil_frights:tasks/hard/holy_grail/wiggle/lift 1t replace
