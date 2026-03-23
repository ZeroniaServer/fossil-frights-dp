kill @e[type=minecraft:block_display,tag=ff_join_queue_pad]
kill @e[type=minecraft:block_display,tag=ff_join_spectator_pad]
kill @e[type=minecraft:block_display,tag=ff_join_active_pad]
kill @e[type=minecraft:armor_stand,tag=ff_join_queue_label]
kill @e[type=minecraft:armor_stand,tag=ff_join_spectator_label]
kill @e[type=minecraft:armor_stand,tag=ff_join_active_label]

summon minecraft:block_display 0.4375 79.895 8.0 {Tags:["ff_join_active_pad"],Glowing:1b,glow_color_override:5635925,block_state:{Name:"minecraft:green_stained_glass"},brightness:{sky:15,block:15},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-2.5625f,0f,-1.0f],scale:[5.125f,0.05f,2.0f]}}
summon minecraft:armor_stand 0.4375 81.0 8.0 {Tags:["ff_join_active_label"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:{"color":"green","text":"ꜱᴛᴀʀᴛ ɢᴀᴍᴇ","italic":false}}

scoreboard players set @a ff_join_cooldown 0
tag @a remove ff_join_spectator_zone
