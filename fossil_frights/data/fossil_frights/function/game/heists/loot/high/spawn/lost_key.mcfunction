kill @e[type=minecraft:interaction,tag=ff_heist_lost_key_click]
kill @e[type=minecraft:shulker,tag=fh_lost_key_collidebox]
function fossil_frights:tasks/hard/return_the_key/setup_roots
summon minecraft:interaction -2 81 66 {width:2.5,height:2.1,response:true,Tags:["ff_heist_lost_key_click","ff_return_the_key_pickup_click"]}
summon minecraft:shulker -2 81 66 {Tags:["fh_lost_key_collidebox"],Invulnerable:true,NoAI:true,Color:6,active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:false}],attributes:[{id:"minecraft:scale",base:2}]}
