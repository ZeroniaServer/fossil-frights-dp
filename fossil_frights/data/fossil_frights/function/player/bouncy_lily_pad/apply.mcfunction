effect give @s minecraft:levitation 1 100 true
tag @s add ff_bouncy_lily_pad_boost
playsound fossil-frights:lily_pad_bounce master @s ~ ~ ~ 1 1
execute as @n[distance=..3,type=minecraft:item_display,tag=bouncy_lily_pad,tag=!ff_bouncy_lily_pad_animating] at @s run function fossil_frights:player/bouncy_lily_pad/compress

scoreboard players operation @s ff_bouncy_lily_pad_cooldown_end_timestamp = #gametime ff_global
scoreboard players add @s ff_bouncy_lily_pad_cooldown_end_timestamp 20
