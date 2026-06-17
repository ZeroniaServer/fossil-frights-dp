scoreboard players set $running ff_rollercoaster 0
scoreboard players set $speed_current ff_rollercoaster 0
execute as @e[type=minecraft:minecart,tag=ff_rollercoaster_cart] run data merge entity @s {Motion:[0.0d,0.0d,0.0d]}
