function fossil_frights:interactions/decorated_pots/interact/accept/effect
data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0.5f,0f],scale:[2f,2f,2f],left_rotation:[0f,0.0348995f,0f,0.99939084f],right_rotation:[0f,0f,0f,1f]}}
tag @s add ff_decorated_pot.wiggle.accept
schedule function fossil_frights:interactions/decorated_pots/interact/accept/middle 2t replace
