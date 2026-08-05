execute unless entity @s[tag=ff_parkour_music] run return 0
function fossil_frights:util/music_loop/tick
execute unless entity @s[tag=ff_lobby_music_restart] run return 0
stopsound @s record fossil-frights:music_loop.parkour
playsound fossil-frights:music_loop.parkour record @s
stopsound @s music
scoreboard players set @s ff_lobby_music_ticks 600
tag @s remove ff_lobby_music_restart
