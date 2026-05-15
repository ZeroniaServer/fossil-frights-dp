function fossil_frights:tasks/easy/fix_cracked_egg/cleanup
setblock 18 95 58 minecraft:air
data modify entity @e[type=minecraft:item_display,tag=ff_sniffer_egg,limit=1,sort=nearest] item set value {id:"minecraft:egg",count:1,components:{lore:[{text:"",extra:["sniffer_egg"]}],tooltip_display:{hidden_components:["lore"]}}}
