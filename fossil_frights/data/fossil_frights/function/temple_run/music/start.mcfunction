execute if entity @s[tag=ff_temple_run_music] run return 0
playsound fossil-frights:music_loop.temple_run record @s
stopsound @s music
tag @s add ff_temple_run_music
scoreboard players set @s ff_lobby_music_ticks 701
