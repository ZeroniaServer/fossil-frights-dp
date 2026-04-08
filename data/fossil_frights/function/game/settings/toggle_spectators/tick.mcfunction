execute if block 10 71 26 minecraft:lever[powered=true] run setblock 9 71 26 minecraft:lime_concrete
execute unless block 10 71 26 minecraft:lever[powered=true] run setblock 9 71 26 minecraft:gray_concrete
execute unless block 10 71 26 minecraft:lever[powered=true] as @a[gamemode=spectator] run function fossil_frights:join/spectator_disabled_exit
