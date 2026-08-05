execute unless entity @s[tag=ff_parkour_music] run return 0
playsound fossil-frights:music_stinger.bee_parkour record @s
stopsound @s record fossil-frights:music_loop.bee_parkour
tag @s remove ff_parkour_music
tag @s remove ff_lobby_music_restart
scoreboard players reset @s ff_lobby_music_ticks
