execute if entity @s[tag=ff_active] run function fossil_frights:messages/error/cannot_watch_tutorial_while_active
execute if entity @s[tag=ff_active] run return 0
execute if score @s ff_parkour_running matches 1.. run function fossil_frights:messages/error/cannot_watch_tutorial_while_parkour
execute if score @s ff_parkour_running matches 1.. run return 0
execute if entity @s[tag=ff_ant_fight] run function fossil_frights:messages/error/cannot_watch_tutorial_while_ant_fight
execute if entity @s[tag=ff_ant_fight] run return 0
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run function fossil_frights:messages/error/tutorial_unavailable_spectators_disabled
execute if score $game_running ff_game_state matches 1 unless block 10 71 26 minecraft:lever[powered=true] run return 0
execute if entity @s[tag=ff_tutorial] run function fossil_frights:tutorial/stop_silent
tag @s add ff_tutorial
scoreboard players set @s ff_tutorial 1
scoreboard players set @s ff_tutorial_scene 1
scoreboard players set @s ff_tutorial_tick 0
clear @s
item replace entity @s armor.head with air
attribute @s minecraft:scale base set 1
effect clear @s minecraft:absorption
effect clear @s minecraft:health_boost
effect give @s minecraft:saturation infinite 255 true
gamemode spectator @s
spectate
tp @s 0.5 84.00 -2.5 0 5
