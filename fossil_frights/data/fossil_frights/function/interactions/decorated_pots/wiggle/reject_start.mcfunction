execute align xyz positioned ~0.5 ~0.5 ~0.5 if entity @s[distance=..0.01] run tag @s add ff_decorated_pot.centered
execute unless entity @s[tag=ff_decorated_pot.centered] run tp @s ~ ~0.5 ~
tag @s add ff_decorated_pot.centered
playsound minecraft:block.decorated_pot.insert_fail block @a ~ ~ ~ 1 1
data merge entity @s {start_interpolation:0,interpolation_duration:2,transformation:{translation:[0f,0f,0f],scale:[2f,2f,2f],left_rotation:[0f,0.05233596f,0f,0.99862953f],right_rotation:[0f,0f,0f,1f]}}
tag @s add ff_decorated_pot.wiggle.reject
schedule function fossil_frights:interactions/decorated_pots/wiggle/reject_middle 2t replace
