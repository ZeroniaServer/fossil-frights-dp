execute if block 10 71 25 minecraft:lever[powered=true] run setblock 9 71 25 minecraft:lime_concrete
execute unless block 10 71 25 minecraft:lever[powered=true] run setblock 9 71 25 minecraft:gray_concrete
execute if block 10 71 25 minecraft:lever[powered=true] run tag @a[tag=ff_active] remove ff_settings_music_off
execute unless block 10 71 25 minecraft:lever[powered=true] run tag @a[tag=ff_active] add ff_settings_music_off
