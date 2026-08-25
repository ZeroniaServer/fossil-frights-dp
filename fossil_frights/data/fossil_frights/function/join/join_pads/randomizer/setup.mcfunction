function fossil_frights:join/join_pads/clear
kill @e[type=minecraft:mannequin,tag=ff_queue_mannequin]
scoreboard players set @a ff_queue_order 0
scoreboard players set @a ff_queue_start 0
scoreboard players set @a ff_queue_start_token 0
scoreboard players set @a ff_queue_prompt_time 0
scoreboard players set @a ff_queue_prompt_display 0
tag @a remove ff_in_queue
tag @a remove ff_join_spectator_zone
execute positioned 0.4375 79.4925 8.0125 rotated 0 0 run function fossil_frights:items/util/summon_item_display {loot_table:"fossil_frights:display/join_pads/random_team_beam",nbt:{Tags:["ff_join_random_pad"],brightness:{sky:15,block:15},item_display:"fixed",transformation:{right_rotation:[1,0,0,0],left_rotation:[0.7071068,0,0,0.7071068],translation:[0,0,0],scale:[5.08,2.02,1]}}}
summon minecraft:text_display 0.4375 81.0 8.0 {Tags:["ff_join_random_label"],billboard:"center",view_range:10,background:0,shadow:true,text_opacity:255,brightness:{sky:15,block:15},text:{translate:"ff.join.random_team",font:"fossil-frights:small_caps",color:"yellow"}}
scoreboard players set $join_pad_mode ff_game_state 5
