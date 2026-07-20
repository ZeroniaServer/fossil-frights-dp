execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run setblock 10 71 26 minecraft:lever[face=wall,facing=east,powered=false]
execute unless entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run setblock 10 71 26 minecraft:lever[face=wall,facing=east,powered=true]
execute if entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run setblock 9 71 26 minecraft:gray_concrete
execute unless entity @a[team=ff_guard,tag=ff_settings_spectator_deny,limit=1] run setblock 9 71 26 minecraft:lime_concrete
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run setblock 10 71 25 minecraft:lever[face=wall,facing=east,powered=false]
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run setblock 10 71 25 minecraft:lever[face=wall,facing=east,powered=true]
execute if entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run setblock 9 71 25 minecraft:gray_concrete
execute unless entity @a[team=ff_guard,tag=ff_settings_music_off,limit=1] run setblock 9 71 25 minecraft:lime_concrete
execute if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run setblock 10 71 24 minecraft:lever[face=wall,facing=east,powered=false]
execute unless entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run setblock 10 71 24 minecraft:lever[face=wall,facing=east,powered=true]
execute unless score $present ff_plugin matches 1 run setblock 10 71 24 minecraft:lever[face=wall,facing=east,powered=false]
execute if score $present ff_plugin matches 1 if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run setblock 9 71 24 minecraft:gray_concrete
execute if score $present ff_plugin matches 1 unless entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run setblock 9 71 24 minecraft:lime_concrete
execute unless score $present ff_plugin matches 1 run setblock 9 71 24 minecraft:gray_concrete
execute if score $present ff_plugin matches 1 if entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run tag @a[team=ff_guard] add ff_muted_chat
execute if score $present ff_plugin matches 1 unless entity @a[team=ff_guard,tag=ff_settings_chat_hidden,limit=1] run tag @a[team=ff_guard] remove ff_muted_chat
execute unless score $present ff_plugin matches 1 run tag @a[team=ff_guard] remove ff_muted_chat
execute if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run setblock 10 71 23 minecraft:lever[face=wall,facing=east,powered=true]
execute unless entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run setblock 10 71 23 minecraft:lever[face=wall,facing=east,powered=false]
execute if score $run_multiplayer ff_game_state matches 1 run setblock 10 71 23 minecraft:lever[face=wall,facing=east,powered=false]
execute if score $run_multiplayer ff_game_state matches 1 run setblock 9 71 23 minecraft:gray_concrete
execute unless score $run_multiplayer ff_game_state matches 1 if entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run setblock 9 71 23 minecraft:lime_concrete
execute unless score $run_multiplayer ff_game_state matches 1 unless entity @a[team=ff_guard,tag=ff_settings_speedrun_show,limit=1] run setblock 9 71 23 minecraft:gray_concrete
function fossil_frights:game/start_room/settings/spectators/refresh
function fossil_frights:game/start_room/settings/music/refresh
function fossil_frights:game/start_room/settings/chat/refresh
function fossil_frights:game/start_room/settings/speedrun/refresh
