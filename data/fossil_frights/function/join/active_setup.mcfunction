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

summon minecraft:item_display 0.4375 79.4925 8.0125 {Tags:["ff_join_active_pad"],brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:lime_stained_glass",count:1,components:{"minecraft:item_name":{text:"Start Beam",italic:false},"minecraft:lore":[{text:"",extra:["join_beam"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[5.08f,2.02f,1f]}}
summon minecraft:text_display 0.4375 81.0 8.0 {Tags:["ff_join_active_label"],billboard:"center",view_range:10f,background:0,default_background:0b,see_through:0b,shadow:1b,text_opacity:255,brightness:{sky:15,block:15},text:[{"text":"ꜱᴛᴀʀᴛ ɢᴀᴍᴇ","color":"green","italic":false}]}

scoreboard players set @a ff_join_cooldown 0
tag @a remove ff_join_spectator_zone
