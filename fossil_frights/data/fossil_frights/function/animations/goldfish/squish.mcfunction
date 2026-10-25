playsound fossil_frights:goldfish_squeak master @a ~ ~ ~ 1 0.9
data modify entity @s transformation.scale[1] set value 0.3f
# data modify entity @s transformation.translation[1] set value -0.4f
data merge entity @s {start_interpolation:0,interpolation_duration:2}
schedule function fossil_frights:animations/goldfish/unsquish_dispatch 2t append