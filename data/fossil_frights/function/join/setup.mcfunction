kill @e[type=minecraft:block_display,tag=ff_join_queue_pad]
kill @e[type=minecraft:block_display,tag=ff_join_spectator_pad]
kill @e[type=minecraft:block_display,tag=ff_join_active_pad]
kill @e[type=minecraft:armor_stand,tag=ff_join_queue_label]
kill @e[type=minecraft:armor_stand,tag=ff_join_spectator_label]
kill @e[type=minecraft:armor_stand,tag=ff_join_active_label]

summon minecraft:block_display 1.75 79.895 8.0 {Tags:["ff_join_queue_pad"],Glowing:1b,glow_color_override:16766720,block_state:{Name:"minecraft:yellow_stained_glass"},brightness:{sky:15,block:15},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-1.0f],scale:[2.5f,0.05f,2.0f]}}
summon minecraft:block_display -0.875 79.895 8.0 {Tags:["ff_join_spectator_pad"],Glowing:1b,glow_color_override:11184810,block_state:{Name:"minecraft:light_gray_stained_glass"},brightness:{sky:15,block:15},transformation:{right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-1.0f],scale:[2.5f,0.05f,2.0f]}}
summon minecraft:armor_stand 1.75 81.0 8.0 {Tags:["ff_join_queue_label"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:{"color":"yellow","text":"ᴊᴏɪɴ ǫᴜᴇᴜᴇ","italic":false}}
summon minecraft:armor_stand -0.875 81.0 8.0 {Tags:["ff_join_spectator_label"],Invisible:1b,Marker:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:{"color":"gray","text":"ꜱᴘᴇᴄᴛᴀᴛᴇ","italic":false}}

scoreboard players set @a ff_join_cooldown 0
tag @a remove ff_join_spectator_zone
function fossil_frights:join/show/queue
function fossil_frights:join/show/spectator
