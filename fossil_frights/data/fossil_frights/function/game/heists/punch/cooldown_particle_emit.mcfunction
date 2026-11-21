particle minecraft:small_gust ~ ~0.05 ~ 0.12 0.02 0.12 0 2
execute if block ~ ~-1 ~ #fossil_frights:white_blocks run particle minecraft:ominous_spawning ~ ~-0.1 ~ 0.1 0.3 0.1 0.1 10
execute unless block ~ ~-1 ~ #fossil_frights:white_blocks if block ~ ~ ~ #fossil_frights:white_blocks run particle minecraft:ominous_spawning ~ ~-0.1 ~ 0.1 0.3 0.1 0.1 10
