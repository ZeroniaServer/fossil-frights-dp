execute if block 10 71 25 minecraft:lever[powered=true] run setblock 9 71 25 minecraft:lime_concrete
execute unless block 10 71 25 minecraft:lever[powered=true] run setblock 9 71 25 minecraft:gray_concrete
execute if block 10 71 25 minecraft:lever[powered=true] run tag @a[team=ff_guard] remove ff_settings_music_off
execute unless block 10 71 25 minecraft:lever[powered=true] run tag @a[team=ff_guard] add ff_settings_music_off
