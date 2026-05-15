function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
setblock 18 95 58 minecraft:sniffer_egg[hatch=1]
data modify entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,limit=1,sort=nearest] item set value {id:"minecraft:air",count:1}
summon minecraft:interaction 18.5 95.6 58.5 {width:1.4f,height:1.2f,response:1b,Tags:["ff_fix_cracked_egg","ff_fix_cracked_egg_click"]}
