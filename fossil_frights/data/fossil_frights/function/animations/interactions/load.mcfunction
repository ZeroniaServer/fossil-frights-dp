kill @e[type=minecraft:marker,tag=anvil]
kill @e[type=minecraft:interaction,tag=ff_anvil_click]
kill @e[type=minecraft:interaction,tag=ff_crane_payment_click]
kill @e[type=minecraft:interaction,tag=ff_sarcophagus_payment_click]
summon minecraft:marker 39 81 62 {Tags:["anvil"]}
summon minecraft:interaction 39 80 62 {Tags:["ff_anvil_click"],width:1.1,height:1.75,response:true}
summon minecraft:interaction 52 68 60 {Tags:["ff_crane_payment_click"],width:1.5,height:1.5,response:true}
summon minecraft:interaction 80 75 81 {Tags:["ff_sarcophagus_payment_click"],width:1.5,height:1.5,response:true}
