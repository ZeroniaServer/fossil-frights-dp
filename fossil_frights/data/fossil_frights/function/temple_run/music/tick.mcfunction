execute unless entity @s[tag=ff_temple_run_music] run return 0
function fossil_frights:util/music_loop/tick
execute unless entity @s[tag=ff_lobby_music_restart] run return 0
playsound fossil-frights:music_loop.temple_run record @s
scoreboard players set @s ff_lobby_music_ticks 600
tag @s remove ff_lobby_music_restart
