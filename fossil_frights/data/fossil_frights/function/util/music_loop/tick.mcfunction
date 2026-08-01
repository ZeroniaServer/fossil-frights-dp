# Counts one 30-second lobby-music interval for the executing player.
scoreboard players remove @s ff_lobby_music_ticks 1
execute if score @s ff_lobby_music_ticks matches ..0 run tag @s add ff_lobby_music_restart
