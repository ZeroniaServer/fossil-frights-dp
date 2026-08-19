kill @e[type=minecraft:item_display,tag=ff_start_room_glass_box]
kill @e[type=minecraft:interaction,tag=ff_start_room_glass_box_click]
execute positioned 16 71 23 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/start_room/glass_box_closed",nbt:{Tags:["ff_start_room_glass_box"],item_display:"fixed",transformation:{right_rotation:[-0.5,0.5,0.5,0.5],left_rotation:[0,0,0,1],translation:[0,0,0],scale:[0.5,0.5,0.5]}}}
summon minecraft:interaction 16.5 71 23.5 {width:1,height:1,response:true,Tags:["ff_start_room_glass_box_click"]}
