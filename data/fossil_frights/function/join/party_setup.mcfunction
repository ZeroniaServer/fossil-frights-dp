function fossil_frights:join/clear
kill @e[type=mannequin,tag=ff_queue_mannequin]
scoreboard players set @a ff_queue_order 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_prompt_time 0
scoreboard players set @a ff_queue_prompt_display 0
tag @a remove ff_in_queue
tag @a remove ff_join_spectator_zone
summon minecraft:item_display 0.4375 79.4925 8.0125 {Tags:["ff_join_party_pad"],brightness:{sky:15,block:15},item_display:"fixed",item:{id:"minecraft:yellow_stained_glass",count:1,components:{"minecraft:item_name":{text:"Party Beam",italic:false},"minecraft:lore":[{text:"",extra:["queue_beam"]}],"minecraft:tooltip_display":{hidden_components:["minecraft:lore"]}}},transformation:{right_rotation:[1f,0f,0f,0f],left_rotation:[0.7071068f,0f,0f,0.7071068f],translation:[0f,0f,0f],scale:[5.08f,2.02f,1f]}}
summon minecraft:text_display 0.4375 81.0 8.0 {Tags:["ff_join_party_label"],billboard:"center",view_range:10f,background:0,default_background:0b,see_through:0b,shadow:1b,text_opacity:255,brightness:{sky:15,block:15},text:[{"text":"ᴊᴏɪɴ ᴘᴀʀᴛʏ","color":"yellow","italic":false}]}
scoreboard players set @a ff_join_cooldown 0
function fossil_frights:join/show/party
