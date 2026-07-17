kill @e[type=minecraft:interaction,tag=ff_heist_lost_key_click]
function fossil_frights:tasks/hard/return_the_key/setup_roots
summon minecraft:interaction -2 81 66 {width:3,height:3,response:true,Tags:["ff_heist_lost_key_click","ff_return_the_key_pickup_click"]}
