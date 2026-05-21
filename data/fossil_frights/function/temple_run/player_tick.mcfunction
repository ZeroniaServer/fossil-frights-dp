execute if score @s ff_temple_run_running matches 1.. unless entity @s[gamemode=adventure] run function fossil_frights:temple_run/end
execute unless entity @s[gamemode=adventure] run return 0
execute positioned 92.5 79 82.5 unless entity @s[distance=..1] run scoreboard players set @s ff_temple_run_start_plate 0
execute if score @s ff_temple_run_start_plate matches 0 positioned 92.5 79 82.5 if entity @s[distance=..1] if block 92 79 82 minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:temple_run/start
execute positioned 92.5 79 82.5 if entity @s[distance=..1] if block 92 79 82 minecraft:light_weighted_pressure_plate[power=1] run scoreboard players set @s ff_temple_run_start_plate 1
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:temple_run/prevent_drop
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{ff_temple_run_restart:1b}}}} unless score @s ff_temple_run_restart_use = @s ff_temple_run_restart_seen run function fossil_frights:temple_run/restart
scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
execute if score @s ff_temple_run_running matches 1 positioned 97.5 80 70.5 if entity @s[distance=..1] if block 97 80 70 minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:temple_run/finish
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:temple_run/timer_tick
