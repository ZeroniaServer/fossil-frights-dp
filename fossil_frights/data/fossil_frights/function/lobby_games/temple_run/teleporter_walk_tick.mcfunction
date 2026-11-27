execute if entity @s[tag=ff_tp_dispatch] unless score @s ff_tp_action matches 8 run return 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run function fossil_frights:lobby_games/stop_all
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tp @s 89.5 79.00 82.5 -90 0
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run function fossil_frights:messages/lobby_games/temple_run_teleported
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tag @s add ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run function fossil_frights:lobby_games/temple_run/reset_player
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tag @s remove ff_skip_plushie_restore
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run tag @s add ff_plushie_restore_queued
execute if entity @s[tag=ff_tp_dispatch] if score @s ff_tp_action matches 8 run scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
execute if entity @s[tag=ff_tp_dispatch] run return 0

execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches ..10 run scoreboard players add @s ff_tp_time 1
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 3 run data modify entity @e[type=item_display,tag=ff_temple_run_tp,limit=1] view_range set value 1f
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 3 at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1000 1
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 10.. run title @s times 5 3 10
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 10.. run title @s title {"text":"","font":"fossil_frights:title_overlays/fade_black","italic":false,"shadow_color":0}
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 10.. run scoreboard players set @s ff_tp_action 8
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 10.. run scoreboard players set @a[scores={ff_tp_action=8},tag=!ff_fade_tp_active] ff_tp_delay 18
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 10.. run tag @a[scores={ff_tp_action=8},tag=!ff_fade_tp_active] add ff_fade_tp_active
execute as @a[gamemode=adventure,tag=!ff_fade_tp_active,predicate=fossil_frights:location/lobby_games/teleporters/temple_run] if score @s ff_tp_time matches 10.. run data modify entity @e[type=item_display,tag=ff_temple_run_tp,limit=1] view_range set value 0f
