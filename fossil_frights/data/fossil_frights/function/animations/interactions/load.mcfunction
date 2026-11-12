kill @e[type=minecraft:interaction,tag=ff_anvil_click]
kill @e[type=minecraft:interaction,tag=ff_crane_payment_click]
kill @e[type=minecraft:interaction,tag=ff_sarcophagus_payment_click]
kill @e[type=minecraft:interaction,tag=ff_good_karma_crow_click]
summon minecraft:interaction 54 80 39 {Tags:["ff_anvil_click"],width:1.1,height:1.25,response:false}
summon minecraft:interaction 52.0 68 61.0 {Tags:["ff_crane_payment_click"],width:1.1,height:1.1,response:true}
summon minecraft:interaction 51 73 81 {Tags:["ff_sarcophagus_payment_click"],width:1,height:1,response:true}
summon minecraft:interaction 26.2 83 30.8 {Tags:["ff_good_karma_crow_click"],width:1.0f,height:1.0f,response:true}
