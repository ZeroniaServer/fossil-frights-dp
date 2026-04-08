function fossil_frights:parkour/reset_player
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
tp @s 1 75 -23 120 0
