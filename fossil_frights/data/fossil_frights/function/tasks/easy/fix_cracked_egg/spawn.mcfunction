function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
item modify entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,limit=1,sort=nearest] contents fossil_frights:fix_cracked_egg/set_cracked
summon minecraft:interaction 18.5 95 58.5 {width:1.4,height:1.2,response:true,Tags:["ff_fix_cracked_egg","ff_fix_cracked_egg_click"]}

