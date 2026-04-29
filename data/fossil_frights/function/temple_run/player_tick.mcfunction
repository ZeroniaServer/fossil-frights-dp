execute if score @s ff_temple_run_running matches 0 positioned 92 79 82 if entity @s[dx=0,dy=1,dz=0] if block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:temple_run/start
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:temple_run/prevent_drop
execute if data entity @s {SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",components:{"minecraft:custom_data":{ff_temple_run_restart:1b}}}} unless score @s ff_temple_run_restart_use = @s ff_temple_run_restart_seen run function fossil_frights:temple_run/restart
scoreboard players operation @s ff_temple_run_restart_seen = @s ff_temple_run_restart_use
execute if score @s ff_temple_run_running matches 1 positioned 97 80 70 if entity @s[dx=0,dy=1,dz=0] if block ~ ~ ~ minecraft:light_weighted_pressure_plate run function fossil_frights:temple_run/finish
execute if score @s ff_temple_run_running matches 1 run function fossil_frights:temple_run/timer_tick
