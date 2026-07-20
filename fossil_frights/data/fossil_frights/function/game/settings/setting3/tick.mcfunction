execute unless score $present ff_plugin matches 1 run setblock 9 71 24 minecraft:gray_concrete
execute unless score $present ff_plugin matches 1 unless block 10 71 24 minecraft:lever[face=wall,facing=east,powered=false] run setblock 10 71 24 minecraft:lever[face=wall,facing=east,powered=false]
execute unless score $present ff_plugin matches 1 run tag @a[team=ff_guard] remove ff_muted_chat
execute if score $present ff_plugin matches 1 if block 10 71 24 minecraft:lever[powered=true] run setblock 9 71 24 minecraft:lime_concrete
execute if score $present ff_plugin matches 1 unless block 10 71 24 minecraft:lever[powered=true] run setblock 9 71 24 minecraft:gray_concrete
execute if score $present ff_plugin matches 1 if block 10 71 24 minecraft:lever[powered=true] run tag @a[team=ff_guard] remove ff_muted_chat
execute if score $present ff_plugin matches 1 unless block 10 71 24 minecraft:lever[powered=true] run tag @a[team=ff_guard] add ff_muted_chat
execute if score $present ff_plugin matches 1 if block 10 71 24 minecraft:lever[powered=true] run tag @a[team=ff_guard] remove ff_settings_chat_hidden
execute if score $present ff_plugin matches 1 unless block 10 71 24 minecraft:lever[powered=true] run tag @a[team=ff_guard] add ff_settings_chat_hidden
