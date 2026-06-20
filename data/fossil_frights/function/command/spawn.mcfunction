execute if entity @s[tag=ff_tutorial] run function fossil_frights:messages/error/cannot_spawn_while_tutorial
execute if entity @s[tag=ff_tutorial] run return 0
execute if entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_spawn_while_active
execute if entity @s[tag=ff_active] run return 0
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
tp @s 0 80 0 0 0
