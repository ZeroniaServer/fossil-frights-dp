execute if entity @s[tag=ff_sulfur_strikers_music] run return 0
playsound fossil-frights:music_loop.sulfur_striker master @s
tag @s add ff_sulfur_strikers_music
scoreboard players set @s ff_lobby_music_ticks 600
