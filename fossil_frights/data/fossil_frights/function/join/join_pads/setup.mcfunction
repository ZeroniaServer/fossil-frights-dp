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
kill @e[type=minecraft:item_display,tag=ff_join_random_pad]
kill @e[type=minecraft:text_display,tag=ff_join_random_label]

execute positioned 1.75 79.4925 8.0125 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/join_pads/queue_beam",nbt:{Tags:["ff_join_queue_pad"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1,0,0,0],left_rotation:[0.7071068,0,0,0.7071068],translation:[0,0,0],scale:[2.48,2.02,1]}}}
execute positioned -0.75 79.4925 8.0125 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/join_pads/spectate_beam",nbt:{Tags:["ff_join_spectator_pad"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1,0,0,0],left_rotation:[0.7071068,0,0,0.7071068],translation:[0,0,0],scale:[2.48,2.02,1]}}}
summon minecraft:text_display 1.75 81.0 8.0 {Tags:["ff_join_queue_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:{color:"yellow",font:"fossil-frights:small_caps",translate:"ff.join_queue"}}
summon minecraft:text_display -0.875 81.0 8.0 {Tags:["ff_join_spectator_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:{color:"gray",font:"fossil-frights:small_caps",translate:"ff.spectate"}}

tag @a remove ff_join_spectator_zone
function fossil_frights:join/join_pads/show/queue
function fossil_frights:join/join_pads/show/spectator
scoreboard players set $join_pad_mode ff_game_state 2
