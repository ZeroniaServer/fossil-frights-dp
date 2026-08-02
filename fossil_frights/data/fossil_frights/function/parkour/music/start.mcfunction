execute if entity @s[tag=ff_parkour_music] run return 0
playsound fossil-frights:music_loop.parkour record @s
stopsound @s music
tag @s add ff_parkour_music
scoreboard players set @s ff_lobby_music_ticks 600
