execute as @a[tag=ff_bouncy_lily_pad_boost,predicate=!fossil_frights:player/bouncy_lily_pad/boost_active] run effect clear @s minecraft:levitation
tag @a[tag=ff_bouncy_lily_pad_boost,predicate=!fossil_frights:player/bouncy_lily_pad/boost_active] remove ff_bouncy_lily_pad_boost

execute as @a[gamemode=!spectator,predicate=fossil_frights:player/bouncy_lily_pad/bounce_cooldown] at @s if block ~ ~ ~ minecraft:air if block ~ ~-1 ~ minecraft:barrier[waterlogged=true] if entity @e[type=minecraft:item_display,tag=bouncy_lily_pad,distance=..3] run function fossil_frights:player/bouncy_lily_pad/apply
