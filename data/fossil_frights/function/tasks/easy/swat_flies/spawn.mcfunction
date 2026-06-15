function fossil_frights:tasks/easy/swat_flies/cleanup
execute positioned 0.5 95.6 52.5 run function fossil_frights:util/summon_item {nbt:{Tags:["ff_swat_flies","ff_swat_flies_item"],NoGravity:1b,PickupDelay:32767,Age:-32768},loot_table:"fossil_frights:display/fly"}
summon minecraft:interaction 0.5 95.6 52.5 {width:0.8f,height:0.8f,response:1b,Tags:["ff_swat_flies","ff_swat_flies_click"]}
