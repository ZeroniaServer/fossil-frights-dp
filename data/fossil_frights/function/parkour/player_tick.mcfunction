execute if score @s ff_parkour_running matches 1.. unless entity @s[gamemode=adventure] run function fossil_frights:parkour/end
execute unless entity @s[gamemode=adventure] run return 0
execute positioned -17.5 75 -20.5 unless entity @s[distance=..1] run scoreboard players set @s ff_parkour_start_plate 0
execute if score @s ff_parkour_start_plate matches 0 positioned -17.5 75 -20.5 if entity @s[distance=..1] if block -18 75 -21 minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:parkour/start
execute positioned -17.5 75 -20.5 if entity @s[distance=..1] if block -18 75 -21 minecraft:light_weighted_pressure_plate[power=1] run scoreboard players set @s ff_parkour_start_plate 1
execute if score @s ff_parkour_running matches 1 if entity @s[tag=ff_dropped_parkour_restart] run function fossil_frights:parkour/end
execute if score @s ff_parkour_running matches 1 positioned -35.5 95 -42.5 if entity @s[distance=..1] if block -36 95 -43 minecraft:light_weighted_pressure_plate[power=1] run function fossil_frights:parkour/finish
execute if score @s ff_parkour_running matches 1 run function fossil_frights:parkour/timer_tick
