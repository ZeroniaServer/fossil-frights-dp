execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 21 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 21 run tag @s add ff_game_start_source
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 21 if entity @a[limit=1,tag=!ff_game_start_source] at @s run function fossil_frights:animations/game_start/run
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 21 run tag @s remove ff_game_start_source
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 21 run tp @s 20 70 20 0 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:lobby_games/parkour/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:lobby_games/ant_fight/end
execute if entity @s[tag=ff_in_queue] run function fossil_frights:join/queue/remove_player
tag @s remove ff_forced_spectate
tag @s remove ff_fade_tutorial_exit
tag @s add ff_invite_join_source
function fossil_frights:join/guard
tag @s remove ff_invite_join_source
gamemode adventure @s
attribute @s minecraft:scale base reset
function fossil_frights:player/protection_disable
clear @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:instant_health 100 0 true
effect give @s minecraft:saturation infinite 255 true
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
title @s actionbar ""
function fossil_frights:player/equip_security_hat
function fossil_frights:key/give_waiting
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 21
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
spawnpoint @s 20 70 20
