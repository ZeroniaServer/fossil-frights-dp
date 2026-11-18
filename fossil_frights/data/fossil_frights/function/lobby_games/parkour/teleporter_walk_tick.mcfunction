execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 3 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run function fossil_frights:lobby_games/stop_all
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run tp @s -15.5 75.00 -20.5 90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run function fossil_frights:messages/lobby_games/bee_parkour_teleported
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run tag @s add ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run function fossil_frights:lobby_games/parkour/reset_player
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run tag @s remove ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run tag @s add ff_plushie_restore_queued
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 3 run scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches ..10 run scoreboard players add @s ff_tp_time 1
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 3 at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 3 run particle minecraft:vault_connection -17.5 81.0 -3.5 0.25 0.5 0.25 1 200 force @s
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 10.. run title @s times 5 3 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 10.. run title @s title {"text":"","font":"fossil_frights:title_overlays/fade_black","italic":false,"shadow_color":0}
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 10.. run scoreboard players set @s ff_tp_action 3
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 10.. run scoreboard players set @a[scores={ff_tp_action=3},tag=!ff_fade_tp_active] ff_tp_delay 18
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/parkour] if score @s ff_tp_time matches 10.. run tag @a[scores={ff_tp_action=3},tag=!ff_fade_tp_active] add ff_fade_tp_active
