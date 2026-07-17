kill @e[type=minecraft:interaction,tag=ff_restock_plushies]
execute as @e[type=item_display,tag=ff_deposited_skeleton_plushie] run data merge entity @s {view_range:1}
