execute unless entity @e[type=minecraft:minecart,tag=ff_rollercoaster_cart,limit=1] run function fossil_frights:rollercoaster/setup
team join ff_rollercoaster_cart @e[type=minecraft:minecart,tag=ff_rollercoaster_cart]
scoreboard players set $running ff_rollercoaster 1
scoreboard players set $speed_target ff_rollercoaster 10
