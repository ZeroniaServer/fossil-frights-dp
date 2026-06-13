summon minecraft:item -19.5 109.4 61.00 {Tags:["ff_final_reward","ff_final_reward_new"],PickupDelay:12,Age:0,Motion:[0.0,-0.08,-0],Item:{id:"minecraft:stone",count:1}}
loot replace entity @e[type=minecraft:item,tag=ff_final_reward_new,limit=1,sort=nearest] contents loot fossil_frights:items/plushies/pterodactyl
tag @e[type=minecraft:item,tag=ff_final_reward_new,limit=1,sort=nearest] remove ff_final_reward_new
