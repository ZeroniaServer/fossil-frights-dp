execute as @a[tag=ff_bouncy_lily_pad_boost] run effect clear @s minecraft:levitation
tag @a[tag=ff_bouncy_lily_pad_boost] remove ff_bouncy_lily_pad_boost

execute as @a[team=ff_lobby,gamemode=!spectator] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:barrier[waterlogged=true] if entity @e[type=minecraft:item_display,tag=bouncy_lily_pad,distance=..3] run function fossil_frights:player/bouncy_lily_pad/apply
execute as @a[team=ff_lobby,gamemode=!spectator] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:barrier[waterlogged=true] if entity @e[type=minecraft:item_display,tag=boucy_lily_pad,distance=..3] run function fossil_frights:player/bouncy_lily_pad/apply
