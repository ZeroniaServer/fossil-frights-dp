execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 25 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 25 run tp @s 0 80 0 0 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[gamemode=spectator] if predicate fossil_frights:game_state/game_running run return run function fossil_frights:messages/error/cannot_spawn_while_active
execute if entity @s[gamemode=spectator] run function fossil_frights:join/spectator/command_exit
execute if entity @s[tag=ff_tutorial] run function fossil_frights:messages/error/cannot_spawn_while_tutorial
execute if entity @s[tag=ff_tutorial] run return 0
function fossil_frights:lobby_games/stop_all
execute if predicate fossil_frights:player/is_playing run function fossil_frights:messages/error/cannot_spawn_while_active
execute if predicate fossil_frights:player/is_playing run return 0
title @s times 5 3 10
title @s title {"text":"","font":"fossil_frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 25
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
