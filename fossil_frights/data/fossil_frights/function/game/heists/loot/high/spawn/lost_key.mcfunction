kill @e[type=minecraft:interaction,tag=ff_heist_lost_key_click]
kill @e[type=minecraft:shulker,tag=fh_lost_key_collidebox]
function fossil_frights:tasks/hard/return_the_key/setup_roots
summon minecraft:interaction -2 81 66 {width:2.5,height:2.1,response:true,Tags:["ff_heist_lost_key_click","ff_return_the_key_pickup_click"]}
summon shulker -2 81 66 {Invulnerable:1b,NoAI:1b,AttachFace:0b,Tags:["fh_lost_key_collidebox"],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:1728000,show_particles:0b}],attributes:[{id:"minecraft:scale",base:2}]}
