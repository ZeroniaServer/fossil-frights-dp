execute unless entity @s[tag=ff_ant_fight_music] run return 0
stopsound @s record fossil-frights:music_loop.ant_fight
playsound fossil-frights:music_stinger.ant_fight record @s
tag @s remove ff_ant_fight_music
tag @s remove ff_lobby_music_restart
scoreboard players reset @s ff_lobby_music_ticks
