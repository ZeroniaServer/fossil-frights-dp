function fossil_frights:join/join_pads/clear
kill @e[type=minecraft:mannequin,tag=ff_queue_mannequin]
scoreboard players set @a ff_queue_order 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_prompt_time 0
scoreboard players set @a ff_queue_prompt_display 0
tag @a remove ff_in_queue
tag @a remove ff_join_spectator_zone
summon minecraft:item_display 0.4375 79.4925 8.0125 {Tags:["ff_join_random_pad"],brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:yellow_stained_glass",count:1,components:{"minecraft:item_name":{translate:"ff.join.random_team_beam",italic:false},"minecraft:lore":[{text:"",extra:["queue_beam"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[5.08f,2.02f,1f]}}
summon minecraft:text_display 0.4375 81.0 8.0 {Tags:["ff_join_random_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:[{translate:"ff.join.random_team",color:"yellow",italic:false}]}
scoreboard players set $join_pad_mode ff_game_state 5
