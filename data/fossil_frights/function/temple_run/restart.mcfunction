tp @s 89.5 79.00 82.5 -90 0
tag @s add ff_skip_plushie_restore
function fossil_frights:temple_run/reset_player
tag @s remove ff_skip_plushie_restore
tag @s add ff_plushie_restore_queued
scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
