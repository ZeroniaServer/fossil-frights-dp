execute if score @s ff_parkour_running matches 0 positioned -3 75 -25 if entity @s[dx=0,dy=1,dz=0] if block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:parkour/start
execute if data entity @s {SelectedItem:{id:"minecraft:carrot_on_a_stick",components:{"minecraft:custom_data":{ff_parkour_restart:1b}}}} unless score @s ff_parkour_restart_use = @s ff_parkour_restart_seen run function fossil_frights:parkour/restart
scoreboard players operation @s ff_parkour_restart_seen = @s ff_parkour_restart_use
execute if score @s ff_parkour_running matches 1 positioned 11 75 -20 if entity @s[dx=0,dy=1,dz=0] if block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:parkour/finish
execute if score @s ff_parkour_running matches 1 run function fossil_frights:parkour/timer_tick
