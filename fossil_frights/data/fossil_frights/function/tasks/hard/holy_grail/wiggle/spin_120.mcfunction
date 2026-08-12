execute as @e[type=minecraft:item_display,tag=ff_holy_grail.complete] run data merge entity @s {teleport_duration:5}
execute as @e[type=minecraft:item_display,tag=ff_holy_grail.complete] at @s run tp @s ~ ~ ~ 120 0
schedule function fossil_frights:tasks/hard/holy_grail/wiggle/spin_240 5t replace
