execute unless entity @s[tag=ff_ant_fight_music] run return 0
function fossil_frights:util/music_loop/tick
execute unless entity @s[tag=ff_lobby_music_restart] run return 0
playsound fossil-frights:music_loop.ant_fight record @s
scoreboard players set @s ff_lobby_music_ticks 600
tag @s remove ff_lobby_music_restart
