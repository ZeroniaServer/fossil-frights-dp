kill @e[type=minecraft:interaction,tag=ff_heist_loot_misplaced_scissors_click]
tag @e[type=minecraft:item_display,tag=fh_scissors] remove ff_heist_scissors_active
execute as @e[type=minecraft:item_display,tag=fh_scissors] run data merge entity @s {view_range:0f}
