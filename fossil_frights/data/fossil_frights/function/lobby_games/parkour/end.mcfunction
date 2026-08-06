execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 26 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 26 run tp @s -15.5 75.00 -20.5 90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 26 run function fossil_frights:lobby_games/parkour/reset_player
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 26 run scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 26 run tag @s remove ff_parkour_exit_pending
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 26 run tag @s remove ff_parkour_leave
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_parkour_exit_pending] run return 0
function fossil_frights:lobby_games/parkour/music/stop
execute unless entity @s[tag=ff_parkour_leave] run function fossil_frights:lobby_games/parkour/reset_player
execute unless entity @s[tag=ff_parkour_leave] run scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
execute unless entity @s[tag=ff_parkour_leave] run tp @s -15.5 75.00 -20.5 90 0
execute unless entity @s[tag=ff_parkour_leave] run return 0
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 26
tag @s add ff_parkour_exit_pending
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
