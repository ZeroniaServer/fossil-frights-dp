place template fossil_frights:avalanche/snowy -26 69 21 none none 1 0 strict
execute if predicate fossil_frights:game_state/heist_mode_active as @a[predicate=fossil_frights:player/team/guard] run clear @s minecraft:leather_boots
execute as @a[predicate=fossil_frights:player/is_playing] at @s run playsound fossil_frights:hallucinations.avalanche master @s ~ ~ ~ 1 1
particle minecraft:snowflake -19.50 71.50 23.50 0 0 0 0.5 75
particle minecraft:snowflake -7.50 72.50 23.50 0 0 0 0.5 75
particle minecraft:snowflake -0.50 70.50 36.50 0 0 0 0.5 75
particle minecraft:snowflake -23.50 71.50 32.50 0 0 0 0.5 75
particle minecraft:snowflake 0.50 70.50 21.50 0 0 0 0.5 75
particle minecraft:snowflake -6.50 70.50 31.50 0 0 0 0.5 75
particle minecraft:snowflake 3.50 73.50 27.50 0 0 0 0.5 75
