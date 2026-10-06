scoreboard players operation @s ff_bouncy_lily_pad_bounce_timestamp = #gametime ff_global

playsound fossil_frights:lily_pad_bounce master @a[distance=..20] ~ ~ ~ 1 1
execute as @n[distance=..3,type=minecraft:item_display,tag=bouncy_lily_pad,tag=!ff_bouncy_lily_pad_animating] at @s run function fossil_frights:player/bouncy_lily_pad/compress

function fossil_frights:util/player/upwards_impulse
