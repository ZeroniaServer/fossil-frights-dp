execute if block 10 71 26 minecraft:lever[powered=true] run setblock 9 71 26 minecraft:lime_concrete
execute unless block 10 71 26 minecraft:lever[powered=true] run setblock 9 71 26 minecraft:gray_concrete
execute if block 10 71 26 minecraft:lever[powered=true] run tag @a[team=ff_guard] remove ff_settings_spectator_deny
execute unless block 10 71 26 minecraft:lever[powered=true] run tag @a[team=ff_guard] add ff_settings_spectator_deny
execute unless block 10 71 26 minecraft:lever[powered=true] as @a[team=ff_spectator] run function fossil_frights:join/spectator/disabled_exit
