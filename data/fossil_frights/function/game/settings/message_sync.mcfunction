scoreboard players set $settings_spectators_prev ff_gui 0
execute if block 10 71 26 minecraft:lever[powered=true] run scoreboard players set $settings_spectators_prev ff_gui 1
scoreboard players set $settings_music_prev ff_gui 0
execute if block 10 71 25 minecraft:lever[powered=true] run scoreboard players set $settings_music_prev ff_gui 1
scoreboard players set $settings_chat_prev ff_gui 0
execute if block 10 71 24 minecraft:lever[powered=true] run scoreboard players set $settings_chat_prev ff_gui 1
scoreboard players set $settings_speedrun_prev ff_gui 0
execute if block 10 71 23 minecraft:lever[powered=true] run scoreboard players set $settings_speedrun_prev ff_gui 1
scoreboard players set $party_button_prev ff_gui 0
execute if block 11 71 20 minecraft:warped_button[powered=true] run scoreboard players set $party_button_prev ff_gui 1
scoreboard players set $heist_button_prev ff_gui 0
execute if block 13 71 20 minecraft:warped_button[powered=true] run scoreboard players set $heist_button_prev ff_gui 1
