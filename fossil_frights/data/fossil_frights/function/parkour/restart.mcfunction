tp @s -15.5 75.00 -20.5 90 0
tag @s add ff_skip_plushie_restore
function fossil_frights:parkour/reset_player
tag @s remove ff_skip_plushie_restore
tag @s add ff_plushie_restore_queued
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
