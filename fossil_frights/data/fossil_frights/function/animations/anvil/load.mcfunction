function fossil_frights:animations/anvil/process/stop
execute as @e[type=minecraft:item_display,tag=ff_anvil_outline] run data merge entity @s {view_range:0f}
