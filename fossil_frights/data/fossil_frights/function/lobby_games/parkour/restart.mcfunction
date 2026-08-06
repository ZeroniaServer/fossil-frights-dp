execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 1 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run tp @s -15.5 75.00 -20.5 90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run tag @s add ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run function fossil_frights:lobby_games/parkour/music/stop
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run function fossil_frights:lobby_games/parkour/reset_player
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run tag @s remove ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run tag @s add ff_plushie_restore_queued
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 1 run scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
execute if entity @s[tag=ff_tp_dispatch] run return 0

tp @s -15.5 75.00 -20.5 90 0
tag @s add ff_skip_plushie_restore
function fossil_frights:lobby_games/parkour/music/stop
function fossil_frights:lobby_games/parkour/reset_player
tag @s remove ff_skip_plushie_restore
tag @s add ff_plushie_restore_queued
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
