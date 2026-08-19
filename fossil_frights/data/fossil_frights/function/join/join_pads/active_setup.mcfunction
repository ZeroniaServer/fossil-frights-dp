kill @e[type=minecraft:block_display,tag=ff_join_queue_pad]
kill @e[type=minecraft:block_display,tag=ff_join_spectator_pad]
kill @e[type=minecraft:block_display,tag=ff_join_active_pad]
kill @e[type=minecraft:block_display,tag=ff_join_party_pad]
kill @e[type=minecraft:item_display,tag=ff_join_queue_pad]
kill @e[type=minecraft:item_display,tag=ff_join_spectator_pad]
kill @e[type=minecraft:item_display,tag=ff_join_active_pad]
kill @e[type=minecraft:item_display,tag=ff_join_party_pad]
kill @e[type=minecraft:text_display,tag=ff_join_queue_label]
kill @e[type=minecraft:text_display,tag=ff_join_spectator_label]
kill @e[type=minecraft:text_display,tag=ff_join_active_label]
kill @e[type=minecraft:text_display,tag=ff_join_party_label]

execute positioned 0.4375 79.4925 8.0125 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/join_pads/join_beam",nbt:{Tags:["ff_join_active_pad"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1,0,0,0],left_rotation:[0.7071068,0,0,0.7071068],translation:[0,0,0],scale:[5.08,2.02,1]}}}
summon minecraft:text_display 0.4375 81.0 8.0 {Tags:["ff_join_active_label"],billboard:"center",view_range:10f,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:[{translate:"ff.start_game",color:"green",italic:false}]}

tag @a remove ff_join_spectator_zone
scoreboard players set $join_pad_mode ff_game_state 1
