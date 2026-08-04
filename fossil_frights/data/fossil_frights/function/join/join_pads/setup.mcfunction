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

summon minecraft:item_display 1.75 79.4925 8.0125 {Tags:["ff_join_queue_pad"],brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:yellow_stained_glass",count:1,components:{"minecraft:lore":[{text:"",extra:["queue_beam"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[2.48f,2.02f,1f]}}
summon minecraft:item_display -0.75 79.4925 8.0125 {Tags:["ff_join_spectator_pad"],brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:gray_stained_glass",count:1,components:{"minecraft:lore":[{text:"",extra:["spectate_beam"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[2.48f,2.02f,1f]}}
summon minecraft:text_display 1.75 81.0 8.0 {Tags:["ff_join_queue_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:[{translate:"ff.join_queue",color:"yellow",italic:false}]}
summon minecraft:text_display -0.875 81.0 8.0 {Tags:["ff_join_spectator_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:[{translate:"ff.spectate",color:"gray",italic:false}]}

tag @a remove ff_join_spectator_zone
function fossil_frights:join/join_pads/show/queue
function fossil_frights:join/join_pads/show/spectator
