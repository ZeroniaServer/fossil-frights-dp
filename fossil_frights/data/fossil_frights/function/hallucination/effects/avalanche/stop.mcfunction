place template fossil_frights:avalanche/empty -26 69 21 none none 1 0 strict
clone -8 69 30 4 69 37 16 0 16 strict filtered minecraft:water
clone 16 0 16 28 0 23 -8 69 30 filtered minecraft:water move
clear @a minecraft:leather_boots[custom_data~{itemID:"thief_avalanche_boots"}]
execute if predicate fossil_frights:game_state/heist_mode_active as @a[predicate=fossil_frights:player/team/guard] run loot replace entity @s armor.feet loot fossil_frights:items/heists/guard_boots
particle minecraft:snowflake -19.50 71.50 23.50 0 0 0 0.5 75
particle minecraft:snowflake -7.50 72.50 23.50 0 0 0 0.5 75
particle minecraft:snowflake -0.50 70.50 36.50 0 0 0 0.5 75
particle minecraft:snowflake -23.50 71.50 32.50 0 0 0 0.5 75
particle minecraft:snowflake 0.50 70.50 21.50 0 0 0 0.5 75
particle minecraft:snowflake -6.50 70.50 31.50 0 0 0 0.5 75
particle minecraft:snowflake 3.50 73.50 27.50 0 0 0 0.5 75
