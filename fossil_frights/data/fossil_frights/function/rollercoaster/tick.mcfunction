execute if score $speed_current ff_rollercoaster < $speed_target ff_rollercoaster run scoreboard players add $speed_current ff_rollercoaster 1
execute if score $speed_current ff_rollercoaster > $speed_target ff_rollercoaster run scoreboard players remove $speed_current ff_rollercoaster 1
execute as @e[type=minecraft:minecart,tag=ff_rollercoaster_cart] at @s run function fossil_frights:rollercoaster/cart_tick

