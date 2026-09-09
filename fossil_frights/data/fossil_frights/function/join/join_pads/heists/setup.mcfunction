function fossil_frights:join/join_pads/clear
kill @e[type=mannequin,tag=ff_queue_mannequin]
scoreboard players set @a ff_queue_order 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_prompt_time 0
scoreboard players set @a ff_queue_prompt_display 0
tag @a remove ff_in_queue
execute positioned -0.75 80.0 8.0 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/join_pads/thieves_beam",nbt:{Tags:["ff_join_heist_pad"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1,0,0,0],scale:[2.499,1.999,1],left_rotation:[0.7071068,0,0,0.7071068],translation:[0,-0.5075,0]},width:2.5,height:1}}
execute positioned 1.75 80.0 8.0 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/join_pads/guards_beam",nbt:{Tags:["ff_join_heist_pad"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1,0,0,0],scale:[2.499,1.999,1],left_rotation:[0.7071068,0,0,0.7071068],translation:[0,-0.5075,0]},width:2.5,height:1}}
summon minecraft:text_display -0.875 81.0 8.0 {Tags:["ff_join_heist_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:{color:"red",font:"fossil-frights:small_caps",translate:"ff.heists.thieves"},width:2,height:1}
summon minecraft:text_display 1.75 81.0 8.0 {Tags:["ff_join_heist_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:{color:"yellow",font:"fossil-frights:small_caps",translate:"ff.heists.guards"},width:2,height:1}
function fossil_frights:join/join_pads/heists/show
scoreboard players set $join_pad_mode ff_game_state 4
