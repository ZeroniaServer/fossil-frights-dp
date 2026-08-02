execute unless entity @s[tag=ff_sulfur_strikers_music] run return 0
stopsound @s record fossil-frights:music_loop.sulfur_striker
playsound fossil-frights:music_stinger.sulfur_striker record @s
tag @s remove ff_sulfur_strikers_music
tag @s remove ff_lobby_music_restart
scoreboard players reset @s ff_lobby_music_ticks
