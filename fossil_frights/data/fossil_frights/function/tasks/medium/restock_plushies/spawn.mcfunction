function fossil_frights:tasks/medium/restock_plushies/cleanup
summon minecraft:interaction -24.5 80 26 {width:1.5f,height:1.0f,response:1b,Tags:["ff_restock_plushies","ff_restock_plushies_click"]}
execute as @e[type=item_display,tag=ff_deposited_skeleton_plushie] run data merge entity @s {view_range:0}