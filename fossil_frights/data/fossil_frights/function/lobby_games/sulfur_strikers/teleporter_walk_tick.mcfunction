execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 10 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 10 run function fossil_frights:lobby_games/stop_all
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 10 run tp @s 45 77 -62 240 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 10 run function fossil_frights:messages/lobby_games/sulfur_strikers_teleported
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches ..10 run scoreboard players add @s ff_tp_time 1
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches 3 at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches 10.. run title @s times 5 3 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches 10.. run title @s title {"text":"","font":"fossil_frights:title_overlays/fade_black","italic":false,"shadow_color":0}
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches 10.. run scoreboard players set @s ff_tp_action 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches 10.. run scoreboard players set @a[scores={ff_tp_action=10},tag=!ff_fade_tp_active] ff_tp_delay 18
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/sulfur_strikers] if score @s ff_tp_time matches 10.. run tag @a[scores={ff_tp_action=10},tag=!ff_fade_tp_active] add ff_fade_tp_active