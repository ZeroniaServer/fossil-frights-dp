execute if entity @s[tag=ff_ant_fight_music] run return 0
playsound fossil-frights:music_loop.ant_fight master @s
tag @s add ff_ant_fight_music
scoreboard players set @s ff_lobby_music_ticks 600
