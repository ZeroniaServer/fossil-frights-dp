kill @e[type=minecraft:marker,tag=anvil]
kill @e[type=minecraft:interaction,tag=ff_anvil_click]
kill @e[type=minecraft:interaction,tag=ff_crane_payment_click]
kill @e[type=minecraft:interaction,tag=ff_sarcophagus_payment_click]
summon minecraft:marker 39 81 62 {Tags:["anvil"]}
summon minecraft:interaction 39 80 62 {width:1.5f,height:2.5f,response:1b,Tags:["ff_anvil_click"]}
summon minecraft:interaction 52 68 60 {width:1.5f,height:1.5f,response:1b,Tags:["ff_crane_payment_click"]}
summon minecraft:interaction 80 75 81 {width:1.5f,height:1.5f,response:1b,Tags:["ff_sarcophagus_payment_click"]}
