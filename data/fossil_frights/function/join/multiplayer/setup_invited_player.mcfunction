execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:parkour/end
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:ant_fight/exit
execute if entity @s[tag=ff_in_queue] run function fossil_frights:join/remove_player_from_queue
tag @s remove ff_forced_spectate
tag @s remove ff_fade_tutorial_exit
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
title @s actionbar ""
function fossil_frights:player/equip_security_hat
function fossil_frights:key/give_waiting
function fossil_frights:game/settings/save_current_to_player
function fossil_frights:util/fade/queue/game_start
spawnpoint @s 20 70 20
