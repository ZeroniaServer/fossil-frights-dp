execute if entity @s[tag=ff_temple_run_exit_pending] run return 0
execute if predicate fossil_frights:player/is_playing_temple_run unless entity @s[gamemode=adventure] run function fossil_frights:lobby_games/temple_run/end
execute unless entity @s[gamemode=adventure] run return 0
scoreboard players add @s ff_temple_run_axe_damage_cooldown 0
scoreboard players remove @s[scores={ff_temple_run_axe_damage_cooldown=1..}] ff_temple_run_axe_damage_cooldown 1
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:lobby_games/temple_run/animations/loop/swinging_axes/collision_tick
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:lobby_games/temple_run/animations/loop/rotating_axes/collision_tick
execute positioned 91.5 79 82.5 unless entity @s[distance=..1] run scoreboard players set @s ff_temple_run_start_plate 0
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:lobby_games/temple_run/music/tick
execute if score @s ff_temple_run_start_plate matches 0 positioned 91.5 79 82.5 if entity @s[distance=..1] if block 91 79 82 minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:lobby_games/temple_run/start
execute positioned 91.5 79 82.5 if entity @s[distance=..1] if block 91 79 82 minecraft:light_weighted_pressure_plate[power=1] run scoreboard players set @s ff_temple_run_start_plate 1
execute if score @s ff_temple_run_running matches 1 positioned 97.5 80 70.5 if entity @s[distance=..1] if block 97 80 70 minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:lobby_games/temple_run/finish
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:lobby_games/temple_run/timer_tick
