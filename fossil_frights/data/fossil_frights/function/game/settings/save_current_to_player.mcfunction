execute if block 10 71 26 minecraft:lever[powered=true] run tag @s remove ff_settings_spectator_deny
execute unless block 10 71 26 minecraft:lever[powered=true] run tag @s add ff_settings_spectator_deny
execute if block 10 71 25 minecraft:lever[powered=true] run tag @s remove ff_settings_music_off
execute unless block 10 71 25 minecraft:lever[powered=true] run tag @s add ff_settings_music_off
execute if score $present ff_plugin matches 1 if block 10 71 24 minecraft:lever[powered=true] run tag @s remove ff_settings_chat_hidden
execute if score $present ff_plugin matches 1 unless block 10 71 24 minecraft:lever[powered=true] run tag @s add ff_settings_chat_hidden
execute unless score $run_multiplayer ff_game_state matches 1 if block 10 71 23 minecraft:lever[powered=true] run tag @s add ff_settings_speedrun_show
execute unless score $run_multiplayer ff_game_state matches 1 unless block 10 71 23 minecraft:lever[powered=true] run tag @s remove ff_settings_speedrun_show
