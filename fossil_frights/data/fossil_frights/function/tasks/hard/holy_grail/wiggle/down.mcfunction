execute as @e[type=minecraft:item_display,tag=ff_holy_grail.complete] run data merge entity @s {teleport_duration:10}
execute as @e[type=minecraft:item_display,tag=ff_holy_grail.complete] at @s run tp @s ~ ~-0.25 ~
schedule function fossil_frights:tasks/hard/holy_grail/wiggle/reset 10t replace
