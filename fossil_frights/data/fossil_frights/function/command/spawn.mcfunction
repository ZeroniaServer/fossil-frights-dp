execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 25 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 25 run tp @s 0 80 0 0 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:messages/error/cannot_spawn_while_tutorial
execute if entity @s[tag=ff_tutorial] run return 0
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_spawn_while_active
execute if predicate fossil_frights:player/is_playing run return 0
execute if entity @s[tag=ff_in_queue] run function fossil_frights:messages/error/cannot_spawn_while_in_queue
execute if entity @s[tag=ff_in_queue] run return 0
execute if entity @s[gamemode=spectator] run function fossil_frights:messages/error/cannot_spawn_while_spectating
execute if entity @s[gamemode=spectator] run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:messages/error/cannot_spawn_while_ant_fight
execute if entity @s[tag=ff_ant_fight] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:messages/error/cannot_spawn_while_parkour
execute if score @s ff_parkour_running matches 1.. run return 0
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:messages/error/cannot_spawn_while_temple_run
execute if score @s ff_temple_run_running matches 1.. run return 0
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 25
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
