execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 22 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 22 run tag @s add ff_game_start_source
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 22 if entity @a[limit=1,tag=!ff_game_start_source] at @s run function fossil_frights:animations/game_start/run
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 22 run tag @s remove ff_game_start_source
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 22 run tp @s 20 70 20 0 0
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute if entity @s[tag=ff_fade_tp_active] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if score @s ff_temple_run_running matches 1.. run function fossil_frights:temple_run/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
tag @s remove ff_in_queue
tag @s remove ff_join_spectator_zone
tag @s remove ff_forced_spectate
tag @s remove ff_settings_speedrun_show
tag @s remove ff_settings_randomizer_on
function fossil_frights:game/start_room/settings/copy_preferences
gamemode adventure @s
attribute @s minecraft:scale base set 1
function fossil_frights:player/protection_disable
clear @s
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:instant_health 100 0 true
effect give @s minecraft:saturation infinite 255 true
scoreboard players set @s ff_key_cooldown 0
scoreboard players set @s ff_key_bar 0
scoreboard players set @s ff_bat_bug_timer 0
scoreboard players set @s ff_bat_bug_bar 0
scoreboard players set @s ff_speedrun_delta 0
scoreboard players set @s ff_speedrun_sign 0
title @s subtitle ""
title @s actionbar ""
function fossil_frights:player/equip_security_hat
function fossil_frights:key/give_waiting
function fossil_frights:key/refresh
spawnpoint @s 20 70 20
title @s times 5 3 10
title @s title {"text":"","font":"fossil-frights:title_overlays/fade_black","italic":false,"shadow_color":0}
scoreboard players set @s ff_tp_action 22
tag @s add ff_fade_tp_active
scoreboard players set @s ff_tp_delay 18
