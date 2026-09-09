function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
data modify entity @e[type=minecraft:block_display,tag=ff_sniffer_egg,limit=1,sort=nearest] block_state.Properties.hatch set value "2"
summon minecraft:interaction 18.5 95 58.5 {width:1.4,height:1.2,response:true,Tags:["ff_fix_cracked_egg","ff_fix_cracked_egg_click"]}


