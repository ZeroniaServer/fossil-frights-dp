execute if entity @s[tag=ff_ant_fight_music] run return 0
stopsound @s music
playsound fossil-frights:music_loop.ant_fight record @s
tag @s add ff_ant_fight_music
scoreboard players set @s ff_lobby_music_ticks 640
