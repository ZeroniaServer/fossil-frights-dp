kill @e[type=minecraft:item_display,tag=ff_heist_capture_point]

kill @e[type=minecraft:item_display,tag=ff_heist_capture_point_icon]
kill @e[type=minecraft:text_display,tag=ff_heist_capture_point_text]
execute positioned 0.5 80.0 12.5 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/capture_point",nbt:{Tags:["ff_heist_capture_point"],brightness:{sky:15,block:15},transformation:{right_rotation:[0,0,0,1],scale:[4.999,1,4.999],left_rotation:[0,0,0,1],translation:[0,0.001,0]},width:5,height:0.5}}
