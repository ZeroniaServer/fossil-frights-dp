kill @e[type=minecraft:item_display,tag=ff_heist_capture_point]

kill @e[type=minecraft:item_display,tag=ff_heist_capture_point_icon]
kill @e[type=minecraft:text_display,tag=ff_heist_capture_point_text]
execute positioned 0.5 79.52375 12.5125 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/capture_point",nbt:{Tags:["ff_heist_capture_point"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[4.977902f,4.977902f,1f]}}}
