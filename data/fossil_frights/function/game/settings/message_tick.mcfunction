scoreboard players set $settings_spectators_cur ff_gui 0
execute if block 10 71 26 minecraft:lever[powered=true] run scoreboard players set $settings_spectators_cur ff_gui 1
execute unless score $settings_spectators_cur ff_gui = $settings_spectators_prev ff_gui if score $settings_spectators_cur ff_gui matches 1 positioned 10 71 26 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/spectators_allow
execute unless score $settings_spectators_cur ff_gui = $settings_spectators_prev ff_gui unless score $settings_spectators_cur ff_gui matches 1 positioned 10 71 26 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/spectators_deny
execute unless score $settings_spectators_cur ff_gui = $settings_spectators_prev ff_gui run scoreboard players operation $settings_spectators_prev ff_gui = $settings_spectators_cur ff_gui
scoreboard players set $settings_music_cur ff_gui 0
execute if block 10 71 25 minecraft:lever[powered=true] run scoreboard players set $settings_music_cur ff_gui 1
execute unless score $settings_music_cur ff_gui = $settings_music_prev ff_gui if score $settings_music_cur ff_gui matches 1 positioned 10 71 25 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/music_on
execute unless score $settings_music_cur ff_gui = $settings_music_prev ff_gui unless score $settings_music_cur ff_gui matches 1 positioned 10 71 25 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/music_off
execute unless score $settings_music_cur ff_gui = $settings_music_prev ff_gui run scoreboard players operation $settings_music_prev ff_gui = $settings_music_cur ff_gui
scoreboard players set $settings_chat_cur ff_gui 0
execute if block 10 71 24 minecraft:lever[powered=true] run scoreboard players set $settings_chat_cur ff_gui 1
execute unless score $settings_chat_cur ff_gui = $settings_chat_prev ff_gui if score $settings_chat_cur ff_gui matches 1 positioned 10 71 24 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/chat_visible
execute unless score $settings_chat_cur ff_gui = $settings_chat_prev ff_gui unless score $settings_chat_cur ff_gui matches 1 positioned 10 71 24 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/chat_hidden
execute unless score $settings_chat_cur ff_gui = $settings_chat_prev ff_gui run scoreboard players operation $settings_chat_prev ff_gui = $settings_chat_cur ff_gui
scoreboard players set $settings_speedrun_cur ff_gui 0
execute if block 10 71 23 minecraft:lever[powered=true] run scoreboard players set $settings_speedrun_cur ff_gui 1
execute unless score $settings_speedrun_cur ff_gui = $settings_speedrun_prev ff_gui if score $settings_speedrun_cur ff_gui matches 1 positioned 10 71 23 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/speedrun_shown
execute unless score $settings_speedrun_cur ff_gui = $settings_speedrun_prev ff_gui unless score $settings_speedrun_cur ff_gui matches 1 positioned 10 71 23 as @a[tag=ff_active,distance=..8,limit=1,sort=nearest] run function fossil_frights:messages/settings/speedrun_hidden
execute unless score $settings_speedrun_cur ff_gui = $settings_speedrun_prev ff_gui run scoreboard players operation $settings_speedrun_prev ff_gui = $settings_speedrun_cur ff_gui
