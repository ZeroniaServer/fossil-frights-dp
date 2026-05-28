execute if block 10 71 24 minecraft:lever[powered=true] run setblock 9 71 24 minecraft:lime_concrete
execute unless block 10 71 24 minecraft:lever[powered=true] run setblock 9 71 24 minecraft:gray_concrete
execute if block 10 71 24 minecraft:lever[powered=true] run tag @a[tag=ff_active] remove ff_muted_chat
execute unless block 10 71 24 minecraft:lever[powered=true] run tag @a[tag=ff_active] add ff_muted_chat
execute if block 10 71 24 minecraft:lever[powered=true] run tag @a[tag=ff_active] remove ff_settings_chat_hidden
execute unless block 10 71 24 minecraft:lever[powered=true] run tag @a[tag=ff_active] add ff_settings_chat_hidden
