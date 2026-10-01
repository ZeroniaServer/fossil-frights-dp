effect give @s minecraft:levitation 1 50 true
tag @s add ff_bouncy_lily_pad_boost
playsound fossil-frights:lily_pad_bounce master @s ~ ~ ~ 1 1
execute as @e[type=minecraft:item_display,tag=bouncy_lily_pad,tag=!ff_bouncy_lily_pad_animating,distance=..3,sort=nearest,limit=1] run function fossil_frights:player/bouncy_lily_pad/compress
execute as @e[type=minecraft:item_display,tag=boucy_lily_pad,tag=!ff_bouncy_lily_pad_animating,distance=..3,sort=nearest,limit=1] run function fossil_frights:player/bouncy_lily_pad/compress
