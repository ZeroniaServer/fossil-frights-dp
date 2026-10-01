particle minecraft:bubble ~ ~1.5 ~ 0.5 0.2 0.5 0 20 force

schedule function fossil_frights:player/bouncy_lily_pad/restore 5t append
tag @s add ff_bouncy_lily_pad_animating

data modify storage fossil_frights:bouncy_lily_pad animation set value {start_interpolation:0,interpolation_duration:5}
data modify storage fossil_frights:bouncy_lily_pad animation.transformation set from entity @s transformation
data modify storage fossil_frights:bouncy_lily_pad animation.data.original_transformation set from storage fossil_frights:bouncy_lily_pad animation.transformation
data modify storage fossil_frights:bouncy_lily_pad animation.transformation.scale[0] set compute default float fossil_frights:bouncy_lily_pad/compress/scale_0
data modify storage fossil_frights:bouncy_lily_pad animation.transformation.scale[1] set compute default float fossil_frights:bouncy_lily_pad/compress/scale_1
data modify storage fossil_frights:bouncy_lily_pad animation.transformation.scale[2] set compute default float fossil_frights:bouncy_lily_pad/compress/scale_2
data modify storage fossil_frights:bouncy_lily_pad animation.transformation.translation[1] set compute default float fossil_frights:bouncy_lily_pad/compress/translation_1
data modify entity @s {} merge from storage fossil_frights:bouncy_lily_pad animation
data remove storage fossil_frights:bouncy_lily_pad animation
