execute unless entity @s[tag=ff_temple_run_music] run return 0
stopsound @s record fossil-frights:music_loop.temple_run
playsound fossil-frights:music_stinger.temple_run record @s
tag @s remove ff_temple_run_music
tag @s remove ff_lobby_music_restart
scoreboard players reset @s ff_lobby_music_ticks
